.class public final Lcom/samsung/android/app/music/milk/store/voucher/VoucherActivity;
.super Lcom/samsung/android/app/music/activity/BaseServiceActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/voucher/VoucherActivity$Companion;
    }
.end annotation


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;

.field public static final b:Lcom/samsung/android/app/music/milk/store/voucher/VoucherActivity$Companion;


# instance fields
.field private final c:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/milk/store/voucher/VoucherActivity;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "myMusicModeController"

    const-string v4, "getMyMusicModeController()Lcom/samsung/android/app/music/milk/StoreMyMusicModeController;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/music/milk/store/voucher/VoucherActivity;->a:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/samsung/android/app/music/milk/store/voucher/VoucherActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/store/voucher/VoucherActivity;->b:Lcom/samsung/android/app/music/milk/store/voucher/VoucherActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 10
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;-><init>()V

    .line 12
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/samsung/android/app/music/milk/store/voucher/VoucherActivity$myMusicModeController$2;->INSTANCE:Lcom/samsung/android/app/music/milk/store/voucher/VoucherActivity$myMusicModeController$2;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/voucher/VoucherActivity;->c:Lkotlin/Lazy;

    return-void
.end method

.method private final a()Lcom/samsung/android/app/music/milk/StoreMyMusicModeController;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/voucher/VoucherActivity;->c:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/milk/store/voucher/VoucherActivity;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/StoreMyMusicModeController;

    return-object v0
.end method

.method public static final a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/app/music/milk/store/voucher/VoucherActivity;->b:Lcom/samsung/android/app/music/milk/store/voucher/VoucherActivity$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherActivity$Companion;->a(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 17
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const-string v0, "VoucherFragment"

    .line 20
    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment;-><init>()V

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 21
    :goto_0
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const v1, 0x1020002

    const-string v2, "VoucherFragment"

    invoke-virtual {p1, v1, v0, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 22
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 25
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherActivity;->a()Lcom/samsung/android/app/music/milk/StoreMyMusicModeController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherActivity;->addActivityLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 29
    invoke-super {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onDestroy()V

    .line 31
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherActivity;->a()Lcom/samsung/android/app/music/milk/StoreMyMusicModeController;

    move-result-object v0

    .line 32
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherActivity;->removeActivityLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V

    return-void
.end method
