.class public final Lcom/samsung/android/app/music/menu/ListMenuGroup$AddToableMenu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/menu/ListMenuGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AddToableMenu"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/menu/ListMenuGroup;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/menu/ListMenuGroup;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 269
    iput-object p1, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$AddToableMenu;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a()V
    .locals 2

    .line 295
    iget-object v0, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$AddToableMenu;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-static {v0}, Lcom/samsung/android/app/music/menu/ListMenuGroup;->d(Lcom/samsung/android/app/music/menu/ListMenuGroup;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;->a(I)[J

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/menu/ListMenuGroup$AddToableMenu;->a([J)V

    return-void

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.samsung.android.app.musiclibrary.ui.list.CheckableList"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final a(Landroid/view/Menu;I)V
    .locals 0

    .line 290
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 291
    iget-object p2, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$AddToableMenu;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-static {p2}, Lcom/samsung/android/app/music/menu/ListMenuGroup;->e(Lcom/samsung/android/app/music/menu/ListMenuGroup;)I

    move-result p2

    if-lez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    return-void

    :cond_1
    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/menu/ListMenuGroup$AddToableMenu;[J)V
    .locals 0

    .line 269
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/menu/ListMenuGroup$AddToableMenu;->a([J)V

    return-void
.end method

.method private final a([J)V
    .locals 2

    .line 305
    iget-object v0, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$AddToableMenu;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-static {v0}, Lcom/samsung/android/app/music/menu/ListMenuGroup;->f(Lcom/samsung/android/app/music/menu/ListMenuGroup;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/menu/ListMenuGroup$AddToableMenu;->b([J)V

    goto :goto_0

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$AddToableMenu;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-static {v0}, Lcom/samsung/android/app/music/menu/ListMenuGroup;->d(Lcom/samsung/android/app/music/menu/ListMenuGroup;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/CheckBoxAnimatableList;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/CheckBoxAnimatableList;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckBoxAnimatableList;->C()Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 309
    new-instance v1, Lcom/samsung/android/app/music/menu/ListMenuGroup$AddToableMenu$performMenuAddTo$$inlined$run$lambda$1;

    invoke-direct {v1, v0, p0, p1}, Lcom/samsung/android/app/music/menu/ListMenuGroup$AddToableMenu$performMenuAddTo$$inlined$run$lambda$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;Lcom/samsung/android/app/music/menu/ListMenuGroup$AddToableMenu;[J)V

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->a(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 315
    :cond_2
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/menu/ListMenuGroup$AddToableMenu;->b([J)V

    .line 317
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$AddToableMenu;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-static {p1}, Lcom/samsung/android/app/music/menu/ListMenuGroup;->g(Lcom/samsung/android/app/music/menu/ListMenuGroup;)V

    return-void
.end method

.method private final b()V
    .locals 3

    .line 299
    iget-object v0, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$AddToableMenu;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-static {v0}, Lcom/samsung/android/app/music/menu/ListMenuGroup;->d(Lcom/samsung/android/app/music/menu/ListMenuGroup;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    const/4 v1, 0x1

    new-instance v2, Lcom/samsung/android/app/music/menu/ListMenuGroup$AddToableMenu$performMenuAddToAsync$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/menu/ListMenuGroup$AddToableMenu$performMenuAddToAsync$1;-><init>(Lcom/samsung/android/app/music/menu/ListMenuGroup$AddToableMenu;)V

    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/list/CheckedItemIdListener;

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;->a(ILcom/samsung/android/app/musiclibrary/ui/list/CheckedItemIdListener;)V

    return-void

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.samsung.android.app.musiclibrary.ui.list.CheckableList"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/menu/ListMenuGroup$AddToableMenu;[J)V
    .locals 0

    .line 269
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/menu/ListMenuGroup$AddToableMenu;->b([J)V

    return-void
.end method

.method private final b([J)V
    .locals 6

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    .line 321
    array-length v1, p1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    xor-int/2addr v1, v0

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    .line 322
    check-cast v1, Landroid/os/Bundle;

    .line 323
    iget-object v2, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$AddToableMenu;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-static {v2}, Lcom/samsung/android/app/music/menu/ListMenuGroup;->d(Lcom/samsung/android/app/music/menu/ListMenuGroup;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    instance-of v2, v2, Lcom/samsung/android/app/musiclibrary/ui/list/ListInfoGetter;

    if-eqz v2, :cond_2

    .line 324
    iget-object v1, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$AddToableMenu;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-static {v1}, Lcom/samsung/android/app/music/menu/ListMenuGroup;->d(Lcom/samsung/android/app/music/menu/ListMenuGroup;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/ListInfoGetter;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/ListInfoGetter;->h()Ljava/lang/String;

    move-result-object v1

    .line 325
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "key_add_to_favorite"

    const-wide/16 v4, -0xb

    .line 328
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v0, v1

    .line 326
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    move-object v1, v2

    goto :goto_1

    .line 324
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.samsung.android.app.musiclibrary.ui.list.ListInfoGetter"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 333
    :cond_2
    :goto_1
    sget-object v0, Lcom/samsung/android/app/music/activity/AddToPlaylistActivity;->a:Lcom/samsung/android/app/music/activity/AddToPlaylistActivity$Companion;

    .line 334
    iget-object v2, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$AddToableMenu;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-static {v2}, Lcom/samsung/android/app/music/menu/ListMenuGroup;->b(Lcom/samsung/android/app/music/menu/ListMenuGroup;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_3
    check-cast v2, Landroid/app/Activity;

    .line 333
    invoke-virtual {v0, v2, p1, v1}, Lcom/samsung/android/app/music/activity/AddToPlaylistActivity$Companion;->b(Landroid/app/Activity;[JLandroid/os/Bundle;)V

    goto :goto_3

    .line 339
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$AddToableMenu;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-static {p1}, Lcom/samsung/android/app/music/menu/ListMenuGroup;->e(Lcom/samsung/android/app/music/menu/ListMenuGroup;)I

    move-result p1

    if-le p1, v0, :cond_5

    const p1, 0x7f0b00d1

    goto :goto_2

    :cond_5
    const p1, 0x7f0b00d0

    .line 344
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$AddToableMenu;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-static {v0}, Lcom/samsung/android/app/music/menu/ListMenuGroup;->b(Lcom/samsung/android/app/music/menu/ListMenuGroup;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_6

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$AddToableMenu;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-static {v1}, Lcom/samsung/android/app/music/menu/ListMenuGroup;->c(Lcom/samsung/android/app/music/menu/ListMenuGroup;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "context.getString(stringResId)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :cond_6
    :goto_3
    return-void
.end method


# virtual methods
.method public a(Landroid/view/Menu;)V
    .locals 1

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f1305ac

    .line 274
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/menu/ListMenuGroup$AddToableMenu;->a(Landroid/view/Menu;I)V

    const v0, 0x7f1305ba

    .line 275
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/menu/ListMenuGroup$AddToableMenu;->a(Landroid/view/Menu;I)V

    return-void
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "inflater"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 280
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f1305ac

    if-eq p1, v0, :cond_1

    const v0, 0x7f1305ba

    if-eq p1, v0, :cond_0

    const v0, 0x7f1305be

    if-eq p1, v0, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    .line 283
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/menu/ListMenuGroup$AddToableMenu;->b()V

    goto :goto_0

    .line 282
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/menu/ListMenuGroup$AddToableMenu;->a()V

    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
