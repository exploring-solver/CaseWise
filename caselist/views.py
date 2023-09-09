from django.shortcuts import render, redirect
from .models import Case
from .forms import CaseForm
from django.contrib.auth.decorators import login_required

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