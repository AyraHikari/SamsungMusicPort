.class public Lcom/samsung/android/app/music/download/MilkDownloadable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/download/Downloadable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/download/MilkDownloadable$ItemSourceIdGetterTask;
    }
.end annotation


# instance fields
.field protected final a:Landroid/support/v4/app/Fragment;

.field private b:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/samsung/android/app/music/download/MilkDownloadable;->a:Landroid/support/v4/app/Fragment;

    .line 26
    iput-object p2, p0, Lcom/samsung/android/app/music/download/MilkDownloadable;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    .line 27
    iput-object p3, p0, Lcom/samsung/android/app/music/download/MilkDownloadable;->c:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/download/MilkDownloadable;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/samsung/android/app/music/download/MilkDownloadable;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    return-object p0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/download/MilkDownloadable;[Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/download/MilkDownloadable;->a([Ljava/lang/String;)V

    return-void
.end method

.method private a([Ljava/lang/String;)V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/samsung/android/app/music/download/MilkDownloadable;->a:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string v1, "@"

    .line 39
    invoke-static {v1, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 38
    :goto_0
    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public v()V
    .locals 4

    .line 32
    new-instance v0, Lcom/samsung/android/app/music/download/MilkDownloadable$ItemSourceIdGetterTask;

    iget-object v1, p0, Lcom/samsung/android/app/music/download/MilkDownloadable;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/download/MilkDownloadable;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    .line 33
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getCheckedItemCount()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/app/music/download/MilkDownloadable;->c:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/samsung/android/app/music/download/MilkDownloadable$ItemSourceIdGetterTask;-><init>(Lcom/samsung/android/app/music/download/MilkDownloadable;Landroid/util/SparseBooleanArray;ILjava/lang/String;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 34
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/download/MilkDownloadable$ItemSourceIdGetterTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
