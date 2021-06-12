.class public final Lcom/samsung/android/app/music/menu/MyInfoMenu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;


# instance fields
.field private final a:Landroid/support/v4/app/FragmentActivity;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/menu/MyInfoMenu;->a:Landroid/support/v4/app/FragmentActivity;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/Menu;)V
    .locals 2

    .line 21
    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->e()Z

    move-result v0

    if-nez p1, :cond_0

    .line 22
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const v1, 0x7f1305db

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 23
    sget-boolean v1, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_2
    return-void
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    if-nez p1, :cond_0

    .line 17
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const p2, 0x7f1305db

    const v0, 0x7f0b01a8

    const/4 v1, 0x0

    invoke-interface {p1, v1, p2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    return-void
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 27
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const v0, 0x7f1305db

    if-nez p1, :cond_1

    goto :goto_1

    .line 28
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v0, :cond_2

    .line 29
    sget-object p1, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoActivity;->a:Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoActivity$Companion;

    iget-object v0, p0, Lcom/samsung/android/app/music/menu/MyInfoMenu;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoActivity$Companion;->a(Landroid/support/v4/app/FragmentActivity;)V

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p1, 0x0

    :goto_2
    return p1
.end method
