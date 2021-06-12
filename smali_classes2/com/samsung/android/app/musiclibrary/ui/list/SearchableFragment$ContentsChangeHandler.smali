.class Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment$ContentsChangeHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContentsChangeHandler"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment$ContentsChangeHandler;->a:Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment$1;)V
    .locals 0

    .line 193
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment$ContentsChangeHandler;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 196
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment$ContentsChangeHandler;->a:Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 197
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment$ContentsChangeHandler;->a:Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->s_()V

    goto :goto_0

    .line 199
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment$ContentsChangeHandler;->a:Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;Z)Z

    :goto_0
    return-void
.end method
