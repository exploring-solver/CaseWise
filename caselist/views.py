from django.shortcuts import render, redirect
from .models import Case, User
from .forms import CaseForm
from django.contrib.auth.decorators import login_required
from django.contrib.auth import authenticate, login, logout
from rest_framework import status

@login_required
def create_case(request):
    if request.method == 'POST':
        form = CaseForm(request.POST)
        if form.is_valid():
            case = form.save(commit=False)
            case.user = request.user
            case.save()
            return redirect('list_cases')
    else:
        form = CaseForm()
    
    return render(request, 'create_case.html', {'form': form})

@login_required
def list_cases(request):
    cases = Case.objects.filter(user=request.user)
    return render(request, 'list_cases.html', {'cases': cases})

def home(request):
    return render(request, 'home.html')

def signup(request):
    if request.method == 'POST':
        username = request.POST.get('username')
        password = request.POST.get('password')
        email = request.POST.get('email')
        name = request.POST.get('name')
        newuser = User.objects.create_user(username=username, password=password, email=email, name=name)
        newuser.save()
        return redirect('login')
    return render(request, 'signup.html')


def login_view(request):
    if request.method == 'POST':
        username = request.POST.get('username')
        password = request.POST.get('password')
        user = authenticate(username=username, password=password)
        if user is not None:
            login(request, user)
            return redirect('dashboard')
        else:
            return render(request, 'login.html', status=status.HTTP_401_UNAUTHORIZED)
    # GET REQUEST
    return render(request, 'login.html')

@login_required
def dashboard(request):
    current_user = request.user.username
    context = {'username': current_user}
    return render(request, 'dashboard.html', context)

