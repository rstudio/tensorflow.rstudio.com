library(tfruns)
# export a run directory to the current working directory 
copy_run("runs/2017-09-24T10-54-00Z") 
# export to the current working directory then rename 
copy_run("runs/2017-09-24T10-54-00Z", rename = "best-run") 
# export artifact files only to the current working directory then rename 
copy_run_files("runs/2017-09-24T10-54-00Z", rename = "best-model") 
# export 3 best eval_acc to a "best-runs" directory 
copy_run(ls_runs(order = eval_acc)[1:3,], to = "best-runs") 
