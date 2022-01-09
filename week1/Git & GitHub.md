---
tags: Week1 - Remote Assignments
---
# Git & GitHub

### 1. 於 GitHub 建立 Repository 並上傳檔案，以下是 Repo 的內容：

Repo Name - myRemoteAssignments
- week1
    - Git & GitHub.md
    - Basic.md
    - Collection.md
    - Control_Flow.md
    - Function.md
    - screenshot
        - Command Line Basics.jpg
        - Beginning Git.jpg
        - Your First iOS and UIKit App.jpg
        - Programming in Swift - Fundamentals.jpg
- week2
    - [my assignments]
- week3
    - [my assignments]
- week4
    - [mt assignments]

---

### 2. Git 指令說明和使用情況

| 指令 | 說明 | 使用情況 |
| -------- | -------- | -------- |
| git status | 了解當前 Git 的 Commit 狀態，以及可以得知未被追蹤(track) 與提交(commit) 的目錄與檔案。 | 當專案中的檔案與內容持續的修改，就可以透過 git status 快速掌握要被追縱與提交的檔案。 |
| git add | 將未被追蹤(untracked files) 的檔案加到暫存區。 | 當專案中新增或是修改檔案內容時，就必須重新 git add 檔案。 |
| git commit | 當檔案進入到暫存區後，就可以提交(commited) 變更，每一次 Commit 都會紀錄變更的內容。 | 只要檔案經新增或是修改，並且已經被追蹤，就需要使用 git commit 。 |
| git log        | 檢視 commit 的紀錄，紀錄包含修改人(Author)、修改日期(Date)、提交變更的內容、雜湊值等。 | 當突然需要知道某個檔案或資料修改的紀錄時，使用 git log 即可查詢。 |
| git push [Repo_name] [Branch_name] | 若是同時有多個不同的節點，但只需要 push 其中一個節點時使用。 | 假設有一個 Repo 有兩個分支 iOS 和 Android，但只需要 push iOS 的更新時。 |
| git remote -v  | 用來確認你fork的clone是能夠使用的。 | 當想知道fork來的Repo是否能夠使用時，可以使用git remove -v 進行確認(origin -> fetch & push)。 |
| git branch | 建立分支，可以複製某版本的一個節點出來。 | 像是在公司多人共同維護一個專案時，就會使用到分支，或是開發不同的作業系統。 |
| fork | 將別人的 Repo 複製一份到你的 Repo 上。 | 如果希望修改或編輯某 Repo 專案的內容，但並不是組織的成員，這時就能使用 fork 來獲取該專案的副本。 |

---
### 3. 如何建立 GitHub Repo，以及上傳 local projects 到 GitHub 上

#### GitHub 建立 Repo
於 GitHub 右上方的 "＋" 下拉選 New repository 或是從 Your Profiles 的 Repositories 點選 New 都能進到 Create a new repository 頁面。

接著輸入 Repository name(必填) & Description(選填)，並選擇 Public(公開) 或是 Private(私人)後，下方有三個選項可以初始化Repo：
- Add a README file - 用以描述專案內容或是說明檔案內容。(一般都會建 README.md 檔案)
- Add .gitignore - 選擇提交時不追蹤(忽略)那些文件。
- Choose a license - 選擇許可證，其他使用者必須遵循你所設定的許可證使用Repo。 (目前只使用MIT License，簡單又簡短的許可)

都設定完成後，點擊下方的"Create Repository"即可完成 Repo 的建立。


#### 上傳 Local projects 到 GitHub
進到 Repo 選 code 裡面的 clone 複製 HTTPS 或 SSH(需要先申請public key)，開啟 Terminal，選擇要存放 Local 端 Repo 的位置，接著輸入指令 git clone [HTTPS Path]，確認成功 clone 後，可以開始於建立目錄與檔案。

當修改完成後，即可以於 Terminal 上該檔案的位置，透過指令 git status 查看被追蹤的檔案有哪些，接著可以選擇 git add . (全部檔案追蹤)或是 git add [File Path] (個別檔案追蹤)。

完成 add 後，用指令 git commit -m "[message]" 或是 git commit 進到 vi 裡編輯，commit 完成後，使用 git log 查看 commit 紀錄。

最後使用指令 git Push [HTTPS Path] 即可將檔案推上 GitHub 上。



