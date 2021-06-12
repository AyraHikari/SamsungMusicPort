.class public Lcom/samsung/android/app/music/browse/list/BrowseShareableImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/browse/list/BrowseShareable;


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Lcom/samsung/android/app/music/milk/share/ShareItemCreator;

.field private final c:I

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/samsung/android/app/music/milk/share/ShareItemCreator;I)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseShareableImpl;->a:Landroid/app/Activity;

    .line 20
    iput-object p3, p0, Lcom/samsung/android/app/music/browse/list/BrowseShareableImpl;->b:Lcom/samsung/android/app/music/milk/share/ShareItemCreator;

    .line 21
    iput p4, p0, Lcom/samsung/android/app/music/browse/list/BrowseShareableImpl;->c:I

    .line 22
    iput-object p2, p0, Lcom/samsung/android/app/music/browse/list/BrowseShareableImpl;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public l()Z
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseShareableImpl;->b:Lcom/samsung/android/app/music/milk/share/ShareItemCreator;

    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/share/ShareItemCreator;->q_()Z

    move-result v0

    return v0
.end method

.method public m_()V
    .locals 3

    .line 32
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseShareableImpl;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/android/app/music/dialog/MilkBaseLauncher;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseShareableImpl;->b:Lcom/samsung/android/app/music/milk/share/ShareItemCreator;

    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/share/ShareItemCreator;->f()Lcom/samsung/android/app/music/milk/share/ShareItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 35
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/BrowseShareableImpl;->a:Landroid/app/Activity;

    iget v2, p0, Lcom/samsung/android/app/music/browse/list/BrowseShareableImpl;->c:I

    invoke-static {v1, v2, v0}, Lcom/samsung/android/app/music/milk/share/Share;->a(Landroid/app/Activity;ILcom/samsung/android/app/music/milk/share/ShareItem;)V

    :cond_0
    return-void
.end method
