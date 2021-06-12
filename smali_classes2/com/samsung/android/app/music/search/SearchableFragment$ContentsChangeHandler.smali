.class Lcom/samsung/android/app/music/search/SearchableFragment$ContentsChangeHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/search/SearchableFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContentsChangeHandler"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/search/SearchableFragment;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/search/SearchableFragment;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/samsung/android/app/music/search/SearchableFragment$ContentsChangeHandler;->a:Lcom/samsung/android/app/music/search/SearchableFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/search/SearchableFragment;Lcom/samsung/android/app/music/search/SearchableFragment$1;)V
    .locals 0

    .line 227
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/search/SearchableFragment$ContentsChangeHandler;-><init>(Lcom/samsung/android/app/music/search/SearchableFragment;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 230
    iget-object p1, p0, Lcom/samsung/android/app/music/search/SearchableFragment$ContentsChangeHandler;->a:Lcom/samsung/android/app/music/search/SearchableFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/search/SearchableFragment;->a(Lcom/samsung/android/app/music/search/SearchableFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 231
    iget-object p1, p0, Lcom/samsung/android/app/music/search/SearchableFragment$ContentsChangeHandler;->a:Lcom/samsung/android/app/music/search/SearchableFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/search/SearchableFragment;->s_()V

    goto :goto_0

    .line 233
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/search/SearchableFragment$ContentsChangeHandler;->a:Lcom/samsung/android/app/music/search/SearchableFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/search/SearchableFragment;->a(Lcom/samsung/android/app/music/search/SearchableFragment;Z)Z

    :goto_0
    return-void
.end method
