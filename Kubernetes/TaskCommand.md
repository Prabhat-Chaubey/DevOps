## 🛠️ Task 3: Debugging a Broken Pod in Namespace trouble

🎯 Goal
Fix the Pod named web in the namespace trouble so that:

✅ Image: `nginx:1.19-alpine`

✅ Pod status: `Running`

### Step-by-Step Instructions
- ### 1️⃣ View Pods in trouble Namespace
- Check the status of the web pod.
  ```
  kubectl get pods -n trouble
  ```
- ### 2️⃣ Describe the web Pod
- Check for detailed errors and event logs.
  ```
  kubectl describe pod web -n trouble
  ```
- ### 3️⃣ View Pod YAML (Optional Debugging)
- If you want to inspect the full YAML config:
  ```
  kubectl get pod web -n trouble -o yaml
  ```
- ### 4️⃣ Delete the Broken Pod
- Since pods can't be edited directly, delete the existing broken pod.
  ```
  kubectl delete pod web -n trouble
  ```
- ### 5️⃣ Recreate the Pod with Correct Image
- Recreate the web pod using the correct image and configuration:
  ```
  kubectl run web --image=nginx:1.19-alpine --restart=Never --port=80 -n trouble
  ```
  
--- 


