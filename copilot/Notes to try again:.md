Notes to try again:

1)

    copilot app init ghost-blog
    
    OR

    copilot app init --domain cowabunga.link ghost-blog


2) copilot env init -n dev --default-config

3) copilot svc init -t "Load Balanced Web Service" --dockerfile ./Dockerfile --port 2368 --name ghost-svc
    done

add EFS configuration
    done

copilot storage init -n ghost -t Aurora --initial-db main --engine MySQL -w ghost-svc

copilot env deploy --name dev

copilot svc deploy -n ghost-svc

just deleted the stack Cloud Formation ghost-blog-dev-ghost-svc. going to run again.


copilot svc deploy -n ghost-svc