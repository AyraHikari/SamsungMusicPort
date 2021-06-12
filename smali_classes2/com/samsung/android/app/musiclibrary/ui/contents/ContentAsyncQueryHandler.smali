.class public Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler$ContentsChangeHandler;,
        Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler$ContentChangeObserver;
    }
.end annotation


# instance fields
.field protected a:Z

.field private final b:Landroid/content/ContentResolver;

.field private c:Landroid/net/Uri;

.field private d:[Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:[Ljava/lang/String;

.field private g:Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler$ContentChangeObserver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .line 38
    invoke-direct {p0, p1}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;->a:Z

    .line 39
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;->c:Landroid/net/Uri;

    .line 40
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;->d:[Ljava/lang/String;

    .line 41
    iput-object p4, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;->e:Ljava/lang/String;

    .line 42
    iput-object p5, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;->f:[Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;->b:Landroid/content/ContentResolver;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;)Landroid/net/Uri;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;->c:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic a(Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;->b(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private b(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8

    const-string v0, "MusicContentObserver"

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "startQuery"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;->e:Ljava/lang/String;

    .line 55
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;->c:Landroid/net/Uri;

    .line 56
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;->d:[Ljava/lang/String;

    .line 57
    iput-object p4, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;->f:[Ljava/lang/String;

    const/4 p1, 0x0

    .line 58
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;->cancelOperation(I)V

    .line 59
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;->c:Landroid/net/Uri;

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;->d:[Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;->e:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;->f:[Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;)[Ljava/lang/String;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;->d:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;)Ljava/lang/String;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;)[Ljava/lang/String;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;->f:[Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;->c:Landroid/net/Uri;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;->d:[Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;->f:[Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;->a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4

    const-string v0, "MusicContentObserver"

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "startObserving"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 78
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;->a:Z

    .line 79
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler$ContentChangeObserver;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler$ContentsChangeHandler;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler$ContentsChangeHandler;-><init>(Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;)V

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler$ContentChangeObserver;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;->g:Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler$ContentChangeObserver;

    .line 80
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;->b:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;->c:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;->g:Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler$ContentChangeObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 83
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;->b(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 3

    const-string v0, "MusicContentObserver"

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "stopObserving"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 91
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;->cancelOperation(I)V

    .line 92
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;->g:Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler$ContentChangeObserver;

    if-eqz v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;->g:Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler$ContentChangeObserver;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler$ContentChangeObserver;->a()V

    .line 94
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;->b:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;->g:Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler$ContentChangeObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 95
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;->a:Z

    :cond_0
    return-void
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 1

    const-string p1, "MusicContentObserver"

    .line 101
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "onQueryComplete cursor : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 103
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void
.end method
