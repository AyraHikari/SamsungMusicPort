.class public final Lcom/samsung/android/app/musiclibrary/ui/AppBar;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/support/v7/widget/Toolbar;

.field private b:Landroid/support/v7/app/ActionBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/support/v7/widget/Toolbar;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->a:Landroid/support/v7/widget/Toolbar;

    return-object v0
.end method

.method public final a(Landroid/support/v7/app/ActionBar;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->b:Landroid/support/v7/app/ActionBar;

    return-void
.end method

.method public final a(Landroid/support/v7/widget/Toolbar;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->a:Landroid/support/v7/widget/Toolbar;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->a:Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/widget/ToolbarExtensionKt;->b(Landroid/support/v7/widget/Toolbar;)V

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->b:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 17
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->b:Landroid/support/v7/app/ActionBar;

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 18
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->b:Landroid/support/v7/app/ActionBar;

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    :cond_3
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->b:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    return-void
.end method

.method public final b()Landroid/support/v7/app/ActionBar;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->b:Landroid/support/v7/app/ActionBar;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->b:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final b(Z)V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->b:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    :cond_0
    return-void
.end method
