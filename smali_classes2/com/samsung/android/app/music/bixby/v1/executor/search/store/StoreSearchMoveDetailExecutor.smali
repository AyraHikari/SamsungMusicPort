.class public Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchMoveDetailExecutor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchMoveDetailExecutor$OnSearchListener;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private final b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final c:Lcom/samsung/android/app/music/bixby/v1/search/BixbyStoreDetailSearchable;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final d:Landroid/support/v4/app/Fragment;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;Lcom/samsung/android/app/music/bixby/v1/search/BixbyStoreDetailSearchable;Landroid/support/v4/app/Fragment;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchMoveDetailExecutor;->a:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchMoveDetailExecutor;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    .line 44
    iput-object p3, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchMoveDetailExecutor;->c:Lcom/samsung/android/app/music/bixby/v1/search/BixbyStoreDetailSearchable;

    .line 45
    iput-object p4, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchMoveDetailExecutor;->d:Landroid/support/v4/app/Fragment;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchMoveDetailExecutor;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchMoveDetailExecutor;->a:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchMoveDetailExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchMoveDetailExecutor;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    return-object p0
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 64
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x27e89f83

    if-eq v0, v1, :cond_1

    const v1, 0x7cb21b60

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "FirstPlaylistDetails"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const-string v0, "FirstAlbumDetails"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, -0x1

    :goto_1
    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_2

    :pswitch_0
    const-string p0, "5"

    goto :goto_2

    :pswitch_1
    const-string p0, "2"

    :goto_2
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic b(Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchMoveDetailExecutor;)Landroid/support/v4/app/Fragment;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchMoveDetailExecutor;->d:Landroid/support/v4/app/Fragment;

    return-object p0
.end method


# virtual methods
.method public execute(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)Z
    .locals 4
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "MOVE_SEARCH_RESULT_DETAIL"

    .line 50
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->getState()Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchMoveDetailExecutor;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchMoveDetailExecutor;->c:Lcom/samsung/android/app/music/bixby/v1/search/BixbyStoreDetailSearchable;

    new-instance v2, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchMoveDetailExecutor$OnSearchListener;

    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchMoveDetailExecutor;->a:Landroid/content/Context;

    invoke-direct {v2, p0, v3, p1, v0}, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchMoveDetailExecutor$OnSearchListener;-><init>(Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchMoveDetailExecutor;Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;Ljava/lang/String;)V

    invoke-interface {v1, v0, v2}, Lcom/samsung/android/app/music/bixby/v1/search/BixbyStoreDetailSearchable;->a(Ljava/lang/String;Lcom/samsung/android/app/music/bixby/v1/search/BixbyStoreDetailSearchable$OnSearchListener;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
