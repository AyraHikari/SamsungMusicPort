.class Lcom/samsung/android/app/music/list/local/SearchFragment$SearchPlayableImpl$ItemIdGetterTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/SearchFragment$SearchPlayableImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemIdGetterTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[J>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/SearchFragment$SearchPlayableImpl;

.field private final b:I

.field private final c:I

.field private d:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/local/SearchFragment$SearchPlayableImpl;II)V
    .locals 0

    .line 889
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$SearchPlayableImpl$ItemIdGetterTask;->a:Lcom/samsung/android/app/music/list/local/SearchFragment$SearchPlayableImpl;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 890
    iput p2, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$SearchPlayableImpl$ItemIdGetterTask;->b:I

    .line 891
    iput p3, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$SearchPlayableImpl$ItemIdGetterTask;->c:I

    return-void
.end method

.method private a()V
    .locals 1

    .line 923
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$SearchPlayableImpl$ItemIdGetterTask;->a:Lcom/samsung/android/app/music/list/local/SearchFragment$SearchPlayableImpl;

    iget-object v0, v0, Lcom/samsung/android/app/music/list/local/SearchFragment$SearchPlayableImpl;->a:Lcom/samsung/android/app/music/list/local/SearchFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/SearchFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$SearchPlayableImpl$ItemIdGetterTask;->d:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$SearchPlayableImpl$ItemIdGetterTask;->d:Landroid/app/ProgressDialog;

    .line 924
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 925
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$SearchPlayableImpl$ItemIdGetterTask;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    .line 926
    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$SearchPlayableImpl$ItemIdGetterTask;->d:Landroid/app/ProgressDialog;

    :cond_0
    return-void
.end method

.method private a(I)V
    .locals 2

    .line 913
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$SearchPlayableImpl$ItemIdGetterTask;->d:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 914
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$SearchPlayableImpl$ItemIdGetterTask;->a:Lcom/samsung/android/app/music/list/local/SearchFragment$SearchPlayableImpl;

    iget-object v0, v0, Lcom/samsung/android/app/music/list/local/SearchFragment$SearchPlayableImpl;->a:Lcom/samsung/android/app/music/list/local/SearchFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/SearchFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 915
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$SearchPlayableImpl$ItemIdGetterTask;->d:Landroid/app/ProgressDialog;

    .line 916
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$SearchPlayableImpl$ItemIdGetterTask;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 917
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$SearchPlayableImpl$ItemIdGetterTask;->d:Landroid/app/ProgressDialog;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 919
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$SearchPlayableImpl$ItemIdGetterTask;->d:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method


# virtual methods
.method protected a([J)V
    .locals 3

    .line 906
    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 907
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$SearchPlayableImpl$ItemIdGetterTask;->a:Lcom/samsung/android/app/music/list/local/SearchFragment$SearchPlayableImpl;

    iget-object v1, v1, Lcom/samsung/android/app/music/list/local/SearchFragment$SearchPlayableImpl;->a:Lcom/samsung/android/app/music/list/local/SearchFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/local/SearchFragment;->g()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$SearchPlayableImpl$ItemIdGetterTask;->a:Lcom/samsung/android/app/music/list/local/SearchFragment$SearchPlayableImpl;

    iget-object v2, v2, Lcom/samsung/android/app/music/list/local/SearchFragment$SearchPlayableImpl;->a:Lcom/samsung/android/app/music/list/local/SearchFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/local/SearchFragment;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/samsung/android/app/music/list/common/PlayUtils;->a([JIILjava/lang/String;)V

    .line 909
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/SearchFragment$SearchPlayableImpl$ItemIdGetterTask;->a()V

    return-void
.end method

.method protected varargs a([Ljava/lang/Void;)[J
    .locals 2

    .line 901
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$SearchPlayableImpl$ItemIdGetterTask;->a:Lcom/samsung/android/app/music/list/local/SearchFragment$SearchPlayableImpl;

    iget v0, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$SearchPlayableImpl$ItemIdGetterTask;->b:I

    iget v1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$SearchPlayableImpl$ItemIdGetterTask;->c:I

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/music/list/local/SearchFragment$SearchPlayableImpl;->a(Lcom/samsung/android/app/music/list/local/SearchFragment$SearchPlayableImpl;II)[J

    move-result-object p1

    return-object p1
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 881
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/SearchFragment$SearchPlayableImpl$ItemIdGetterTask;->a([Ljava/lang/Void;)[J

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 881
    check-cast p1, [J

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/SearchFragment$SearchPlayableImpl$ItemIdGetterTask;->a([J)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    const v0, 0x7f0b0302

    .line 896
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/list/local/SearchFragment$SearchPlayableImpl$ItemIdGetterTask;->a(I)V

    return-void
.end method
