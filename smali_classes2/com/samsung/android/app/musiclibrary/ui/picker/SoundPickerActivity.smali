.class public abstract Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;
.super Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/PermissionManager$OnPermissionResultListener;
.implements Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;
.implements Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;
.implements Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;
.implements Lcom/samsung/android/app/musiclibrary/ui/picker/single/AutoRecommendationManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$PickerSelectAllImpl;,
        Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$AutoRecommendationManagerImpl;,
        Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$Companion;


# instance fields
.field private b:Z

.field private c:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

.field private d:Lcom/samsung/android/app/musiclibrary/ui/picker/single/AutoRecommendationManager;

.field private e:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

.field private f:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

.field private g:Z

.field private h:I

.field private i:Landroid/support/design/widget/TabLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;-><init>()V

    const/4 v0, -0x1

    .line 67
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->h:I

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->h:I

    return p0
.end method

.method private final a(ILjava/lang/String;J)V
    .locals 1

    .line 286
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$Companion;

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$Companion;->a(Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$Companion;I)I

    move-result v0

    .line 287
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->b(I)V

    .line 289
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$Companion;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$Companion;->a(Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$Companion;ILjava/lang/String;J)Landroid/support/v4/app/Fragment;

    move-result-object p2

    .line 290
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p3

    .line 291
    invoke-virtual {p3}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate()Z

    .line 292
    invoke-virtual {p3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p3

    .line 293
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    const v0, 0x1020011

    invoke-virtual {p3, v0, p2, p4}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 294
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 295
    invoke-virtual {p3}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;I)V
    .locals 0

    .line 52
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->h:I

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;ILjava/lang/String;J)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->a(ILjava/lang/String;J)V

    return-void
.end method

.method private final b(I)V
    .locals 5

    .line 253
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 258
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 259
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 260
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 261
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_3

    .line 264
    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->g:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 265
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerFactory;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerFactory;

    invoke-virtual {v2, p1, v3}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerFactory;->a(IZ)Landroid/support/v4/app/Fragment;

    move-result-object v2

    goto :goto_0

    .line 267
    :cond_1
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerFactory;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerFactory;

    invoke-virtual {v2, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerFactory;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 269
    :goto_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 270
    iget-boolean v4, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->b:Z

    if-nez v4, :cond_2

    .line 271
    iput-boolean v3, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->b:Z

    goto :goto_1

    .line 273
    :cond_2
    sget v3, Lcom/samsung/android/app/musiclibrary/R$animator;->library_fragment_visible:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(II)Landroid/support/v4/app/FragmentTransaction;

    :goto_1
    const v3, 0x1020011

    .line 275
    invoke-virtual {v0, v3, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 278
    :cond_3
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->h:I

    .line 280
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->i:Landroid/support/design/widget/TabLayout;

    if-nez v0, :cond_4

    const-string v1, "tabLayout"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_4
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->d(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->select()V

    :cond_5
    return-void
.end method

.method public static final synthetic b(Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;I)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->b(I)V

    return-void
.end method

.method private final c(I)Z
    .locals 2

    const v0, 0x110001

    if-eq p1, v0, :cond_0

    .line 301
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 302
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$Companion;

    invoke-static {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$Companion;->b(Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$Companion;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 303
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final d(I)I
    .locals 1

    const v0, 0x10007

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    :pswitch_0
    const/4 p1, 0x2

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    :goto_0
    return p1

    :pswitch_data_0
    .packed-switch 0x10002
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a(JZ)V
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->c:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->a(JZ)V

    :cond_0
    return-void
.end method

.method public a(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;IZ)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 390
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->e:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;->a(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;IZ)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager$OnUpdateCheckedItemsListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 339
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->c:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->a(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager$OnUpdateCheckedItemsListener;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/samsung/android/app/musiclibrary/ui/picker/single/AutoRecommendationManager$AutoRecommendationOnListener;)V
    .locals 1

    const-string v0, "l"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 347
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->d:Lcom/samsung/android/app/musiclibrary/ui/picker/single/AutoRecommendationManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AutoRecommendationManager;->a(Lcom/samsung/android/app/musiclibrary/ui/picker/single/AutoRecommendationManager$AutoRecommendationOnListener;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const-string v0, "removeIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->c:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->a(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 355
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->d:Lcom/samsung/android/app/musiclibrary/ui/picker/single/AutoRecommendationManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AutoRecommendationManager;->a(Z)V

    :cond_0
    return-void
.end method

.method public a([J)V
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->c:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->a([J)V

    :cond_0
    return-void
.end method

.method public a(J)Z
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->c:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->a(J)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public a()[J
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->c:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->a()[J

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public a(I)[J
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->c:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->a(I)[J

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public b()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 319
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->c:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->b()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public b(Lcom/samsung/android/app/musiclibrary/ui/picker/single/AutoRecommendationManager$AutoRecommendationOnListener;)V
    .locals 1

    const-string v0, "l"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->d:Lcom/samsung/android/app/musiclibrary/ui/picker/single/AutoRecommendationManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AutoRecommendationManager;->b(Lcom/samsung/android/app/musiclibrary/ui/picker/single/AutoRecommendationManager$AutoRecommendationOnListener;)V

    :cond_0
    return-void
.end method

.method public c()I
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->c:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->c()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d()Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->f:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    return-object v0
.end method

.method protected abstract e()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

.method protected f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public g()Z
    .locals 1

    .line 363
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->d:Lcom/samsung/android/app/musiclibrary/ui/picker/single/AutoRecommendationManager;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AutoRecommendationManager;->g()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLaunchSearchEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public launchSearch()V
    .locals 3

    .line 367
    new-instance v0, Landroid/content/Intent;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->e()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "isMultiple"

    .line 368
    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->g:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 369
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->g:Z

    if-eqz v1, :cond_0

    const-string v1, "key_checked_ids"

    .line 370
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->a()[J

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    :cond_0
    const/16 v1, 0x7be

    .line 373
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 10

    .line 207
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->g:Z

    const/16 v1, 0x7be

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    if-ne p1, v1, :cond_3

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-eqz p3, :cond_3

    .line 216
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "key_checked_ids"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object p1

    .line 217
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->a([J)V

    goto :goto_0

    .line 211
    :pswitch_1
    invoke-virtual {p0, v2, p3}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->setResult(ILandroid/content/Intent;)V

    .line 212
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->finish()V

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_3

    if-eq p2, v2, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_3

    const-string p1, "key_list_type"

    .line 228
    invoke-virtual {p3, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string p1, "key_keyword"

    .line 229
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string p1, "extra_audio_id"

    int-to-long v0, v2

    .line 230
    invoke-virtual {p3, p1, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    .line 562
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->isResumedState()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 233
    invoke-static {p0, v5, v6, v7, v8}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->a(Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;ILjava/lang/String;J)V

    goto :goto_0

    .line 565
    :cond_2
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$onActivityResult$$inlined$let$lambda$1;

    move-object v3, p1

    move-object v4, p0

    move-object v9, p0

    invoke-direct/range {v3 .. v9}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$onActivityResult$$inlined$let$lambda$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;ILjava/lang/String;JLcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;)V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->addActivityLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V

    :cond_3
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 245
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 246
    iget-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->g:Z

    if-eqz p1, :cond_1

    .line 247
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$PickerSelectAllImpl;

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$PickerSelectAllImpl;-><init>(Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;Landroid/app/Activity;)V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->e:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

    .line 248
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->e:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;->d()Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->f:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 92
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "isMultiple"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->g:Z

    .line 93
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 95
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->getPermissionManager()Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;

    move-result-object v0

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 96
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->a(ZZLcom/samsung/android/app/musiclibrary/ui/PermissionManager$OnPermissionResultListener;[Ljava/lang/String;)V

    .line 97
    move-object v1, p0

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager$OnPermissionResultListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->a(Lcom/samsung/android/app/musiclibrary/ui/PermissionManager$OnPermissionResultListener;)V

    .line 100
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->finish()V

    return-void

    .line 105
    :cond_0
    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->setSearchLaunchable(Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;)V

    .line 107
    sget v0, Lcom/samsung/android/app/musiclibrary/R$layout;->sound_picker_activity_kt:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->setContentView(I)V

    .line 109
    sget v0, Lcom/samsung/android/app/musiclibrary/R$id;->toolbar:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    .line 110
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 112
    sget v1, Lcom/samsung/android/app/musiclibrary/R$id;->tabs:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/support/design/widget/TabLayout;

    .line 113
    invoke-virtual {v4}, Landroid/support/design/widget/TabLayout;->newTab()Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v5

    .line 114
    sget v6, Lcom/samsung/android/app/musiclibrary/R$string;->tracks:I

    invoke-virtual {v5, v6}, Landroid/support/design/widget/TabLayout$Tab;->setText(I)Landroid/support/design/widget/TabLayout$Tab;

    const v6, 0x110001

    .line 115
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/support/design/widget/TabLayout$Tab;->setTag(Ljava/lang/Object;)Landroid/support/design/widget/TabLayout$Tab;

    .line 113
    invoke-virtual {v4, v5}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 117
    invoke-virtual {v4}, Landroid/support/design/widget/TabLayout;->newTab()Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v5

    .line 118
    sget v7, Lcom/samsung/android/app/musiclibrary/R$string;->albums:I

    invoke-virtual {v5, v7}, Landroid/support/design/widget/TabLayout$Tab;->setText(I)Landroid/support/design/widget/TabLayout$Tab;

    const v7, 0x10002

    .line 119
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/support/design/widget/TabLayout$Tab;->setTag(Ljava/lang/Object;)Landroid/support/design/widget/TabLayout$Tab;

    .line 117
    invoke-virtual {v4, v5}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 121
    invoke-virtual {v4}, Landroid/support/design/widget/TabLayout;->newTab()Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v5

    .line 122
    sget v7, Lcom/samsung/android/app/musiclibrary/R$string;->artists:I

    invoke-virtual {v5, v7}, Landroid/support/design/widget/TabLayout$Tab;->setText(I)Landroid/support/design/widget/TabLayout$Tab;

    const v7, 0x10003

    .line 123
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/support/design/widget/TabLayout$Tab;->setTag(Ljava/lang/Object;)Landroid/support/design/widget/TabLayout$Tab;

    .line 121
    invoke-virtual {v4, v5}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 125
    invoke-virtual {v4}, Landroid/support/design/widget/TabLayout;->newTab()Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v5

    .line 126
    sget v7, Lcom/samsung/android/app/musiclibrary/R$string;->folders:I

    invoke-virtual {v5, v7}, Landroid/support/design/widget/TabLayout$Tab;->setText(I)Landroid/support/design/widget/TabLayout$Tab;

    const v7, 0x10007

    .line 127
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/support/design/widget/TabLayout$Tab;->setTag(Ljava/lang/Object;)Landroid/support/design/widget/TabLayout$Tab;

    .line 125
    invoke-virtual {v4, v5}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 129
    new-instance v5, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$onCreate$$inlined$apply$lambda$1;

    invoke-direct {v5, p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$onCreate$$inlined$apply$lambda$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;)V

    check-cast v5, Landroid/support/design/widget/TabLayout$OnTabSelectedListener;

    invoke-virtual {v4, v5}, Landroid/support/design/widget/TabLayout;->addOnTabSelectedListener(Landroid/support/design/widget/TabLayout$OnTabSelectedListener;)V

    const-string v5, "findViewById<TabLayout>(\u2026\n            })\n        }"

    .line 112
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->i:Landroid/support/design/widget/TabLayout;

    .line 152
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->g:Z

    if-eqz v1, :cond_5

    const-string v1, "toolbar"

    .line 153
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getContentInsetEnd()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/support/v7/widget/Toolbar;->setContentInsetsRelative(II)V

    .line 154
    sget v0, Lcom/samsung/android/app/musiclibrary/R$id;->auto_recommendation:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById<View>(R.id.auto_recommendation)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 156
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManagerImpl;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManagerImpl;-><init>()V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->c:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    .line 157
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$PickerSelectAllImpl;

    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$PickerSelectAllImpl;-><init>(Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;Landroid/app/Activity;)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->e:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

    .line 158
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->e:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;->d()Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->f:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    .line 159
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 160
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->f:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    if-nez v1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    iget-object v1, v1, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 161
    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 162
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 163
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    :cond_3
    if-eqz p1, :cond_8

    const-string v0, "checked_item_ids"

    .line 166
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    if-eqz v0, :cond_8

    .line 560
    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_8

    aget-wide v4, v0, v2

    .line 167
    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->c:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    if-nez v7, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_4
    invoke-interface {v7, v4, v5, v3}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->a(JZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 171
    :cond_5
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$AutoRecommendationManagerImpl;

    .line 172
    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    .line 173
    sget-boolean v4, Lcom/samsung/android/app/musiclibrary/ui/feature/FloatingFeatures;->b_:Z

    if-eqz v4, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "enable_ringtone_recommender"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v2, 0x1

    .line 171
    :cond_6
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$AutoRecommendationManagerImpl;-><init>(Landroid/app/Activity;Z)V

    if-eqz p1, :cond_7

    const-string v1, "auto_recommendation_on"

    .line 178
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 180
    :cond_7
    invoke-virtual {v0, v3}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$AutoRecommendationManagerImpl;->b(Z)V

    .line 177
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AutoRecommendationManager;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->d:Lcom/samsung/android/app/musiclibrary/ui/picker/single/AutoRecommendationManager;

    :cond_8
    if-eqz p1, :cond_9

    const-string v0, "key_list_type"

    .line 186
    invoke-virtual {p1, v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    :cond_9
    iput v6, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->h:I

    .line 187
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->h:I

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->b(I)V

    .line 189
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const-string v0, "window"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    .line 192
    sget v0, Lcom/samsung/android/app/music/support/android/view/WindowManagerCompat$LayoutParams;->SAMSUNG_FLAG_SOFT_INPUT_ADJUST_RESIZE_FULLSCREEN:I

    sget v1, Lcom/samsung/android/app/music/support/android/view/WindowManagerCompat$LayoutParams;->SAMSUNG_FLAG_SOFT_INPUT_DELAYED_ADJUST_RESIZE:I

    or-int/2addr v0, v1

    .line 190
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/support/android/view/WindowManagerCompat$LayoutParams;->addExtensionFlags(Landroid/view/WindowManager$LayoutParams;I)V

    .line 194
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-string v1, "window"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 199
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->finish()V

    const/4 p1, 0x1

    return p1

    .line 202
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPermissionResult([Ljava/lang/String;[I)V
    .locals 1

    const-string v0, "permissions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "grantResults"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 493
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->getPermissionManager()Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 494
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->h:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 495
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p1

    .line 496
    instance-of p2, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->s_()V

    goto :goto_0

    .line 498
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->finish()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key_list_type"

    .line 77
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->h:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 78
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->c:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    if-eqz v0, :cond_0

    const-string v1, "checked_item_ids"

    .line 79
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->a()[J

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;->d:Lcom/samsung/android/app/musiclibrary/ui/picker/single/AutoRecommendationManager;

    if-eqz v0, :cond_1

    const-string v1, "auto_recommendation_on"

    .line 85
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AutoRecommendationManager;->g()Z

    move-result v0

    .line 83
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 88
    :cond_1
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public setLaunchSearchEnabled(Z)V
    .locals 0

    return-void
.end method
