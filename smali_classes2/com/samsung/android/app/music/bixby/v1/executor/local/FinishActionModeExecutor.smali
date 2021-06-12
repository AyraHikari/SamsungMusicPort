.class public final Lcom/samsung/android/app/music/bixby/v1/executor/local/FinishActionModeExecutor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;


# static fields
.field private static final a:Ljava/lang/String; = "FinishActionModeExecutor"


# instance fields
.field private final b:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ActionModeController;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final c:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ActionModeController;Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;)V
    .locals 0
    .param p1    # Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ActionModeController;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/local/FinishActionModeExecutor;->b:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ActionModeController;

    .line 25
    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/v1/executor/local/FinishActionModeExecutor;->c:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;

    return-void
.end method


# virtual methods
.method public execute(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)Z
    .locals 1
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 30
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MOVE_LOCAL_TAB"

    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MOVE_MAIN_TAB"

    .line 32
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "LAUNCH_SEARCH"

    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "LAUNCH_SETTINGS"

    .line 34
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "LAUNCH_EVENT"

    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "LAUNCH_SUBSCRIPTION"

    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "LAUNCH_PURCHASED_TRACK"

    .line 37
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "LAUNCH_HELP"

    .line 38
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "LAUNCH_CONTACT_US"

    .line 39
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "LAUNCH_PLAYER"

    .line 40
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/local/FinishActionModeExecutor;->c:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;

    .line 41
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getActionMode()Landroid/support/v7/view/ActionMode;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 42
    sget-object p1, Lcom/samsung/android/app/music/bixby/v1/executor/local/FinishActionModeExecutor;->a:Ljava/lang/String;

    const-string v0, "execute() - Finish action mode but will not return true in here."

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/local/FinishActionModeExecutor;->b:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ActionModeController;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ActionModeController;->K()V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
