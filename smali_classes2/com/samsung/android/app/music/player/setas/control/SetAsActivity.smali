.class public final Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;
.super Lcom/samsung/android/app/music/activity/BaseServiceActivity;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$Companion;
    }
.end annotation


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;

.field public static final b:Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$Companion;


# instance fields
.field private c:J

.field private d:Lcom/samsung/android/app/musiclibrary/ui/widget/round/RoundedLinearLayout;

.field private e:Lcom/samsung/android/app/musiclibrary/ui/widget/round/RoundedLinearLayout;

.field private f:Landroid/view/MenuItem;

.field private g:Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;

.field private final h:Lkotlin/Lazy;

.field private final i:Lkotlin/Lazy;

.field private final j:Lkotlin/Lazy;

.field private final k:Lkotlin/Lazy;

.field private final l:Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$setAsRecommendGroup$1;

.field private final m:Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$setAsToneGroup$1;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x4

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "ringtoneController"

    const-string v4, "getRingtoneController()Lcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "newPermissionManager"

    const-string v4, "getNewPermissionManager()Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "onPermissionResultListener"

    const-string v4, "getOnPermissionResultListener()Lcom/samsung/android/app/musiclibrary/ui/PermissionManager$OnPermissionResultListener;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "onCheckChangedListener"

    const-string v4, "getOnCheckChangedListener()Lcom/samsung/android/app/music/player/setas/widget/SetAsItemLayout$OnCheckChangedListener;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->a:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->b:Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 51
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;-><init>()V

    const-wide/16 v0, -0x1

    .line 53
    iput-wide v0, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->c:J

    .line 59
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$ringtoneController$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$ringtoneController$2;-><init>(Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->h:Lkotlin/Lazy;

    .line 62
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$newPermissionManager$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$newPermissionManager$2;-><init>(Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->i:Lkotlin/Lazy;

    .line 68
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$onPermissionResultListener$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$onPermissionResultListener$2;-><init>(Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->j:Lkotlin/Lazy;

    .line 89
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$onCheckChangedListener$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$onCheckChangedListener$2;-><init>(Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->k:Lkotlin/Lazy;

    .line 103
    new-instance v0, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$setAsRecommendGroup$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$setAsRecommendGroup$1;-><init>(Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->l:Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$setAsRecommendGroup$1;

    .line 125
    new-instance v0, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$setAsToneGroup$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$setAsToneGroup$1;-><init>(Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->m:Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$setAsToneGroup$1;

    return-void
.end method

.method private final a(J)J
    .locals 7

    .line 224
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->a:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 228
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string p1, "source_id"

    .line 230
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 227
    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    check-cast p1, Ljava/io/Closeable;

    const/4 p2, 0x0

    .line 234
    check-cast p2, Ljava/lang/Throwable;

    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 235
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 236
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 238
    :goto_0
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-wide v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception p2

    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private final a()Lcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->h:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController;

    return-object v0
.end method

.method private final a(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 7

    const-string v0, "_data"

    .line 365
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 420
    move-object p2, p1

    check-cast p2, Ljava/io/Closeable;

    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/lang/Throwable;

    :try_start_0
    move-object v2, p2

    check-cast v2, Landroid/database/Cursor;

    if-nez p1, :cond_0

    goto :goto_0

    .line 432
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 367
    :goto_0
    invoke-static {p2, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :cond_1
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {p2, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v1, p1

    .line 420
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    invoke-static {p2, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->h()V

    return-void
.end method

.method private final a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    .line 373
    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 375
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    if-nez p2, :cond_1

    .line 378
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {p2, v0, v2, v3, v4}, Lkotlin/text/StringsKt;->a(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 380
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v3, "mounted"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const p2, 0x7f0b0168

    .line 382
    invoke-static {p1, p2, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return v1

    .line 388
    :cond_2
    :try_start_0
    sget v0, Landroid/system/OsConstants;->F_OK:I

    invoke-static {p2, v0}, Landroid/system/Os;->access(Ljava/lang/String;I)Z

    move-result p2

    if-nez p2, :cond_3

    const p2, 0x7f0b0146

    .line 389
    invoke-static {p1, p2, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 390
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->finish()V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    :cond_3
    return v2
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;)Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->g:Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;

    return-object p0
.end method

.method private final b()Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->i:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;

    return-object v0
.end method

.method private final c()Lcom/samsung/android/app/musiclibrary/ui/PermissionManager$OnPermissionResultListener;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->j:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager$OnPermissionResultListener;

    return-object v0
.end method

.method public static final synthetic c(Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;)Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->b()Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;

    move-result-object p0

    return-object p0
.end method

.method private final d()Lcom/samsung/android/app/music/player/setas/widget/SetAsItemLayout$OnCheckChangedListener;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->k:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/player/setas/widget/SetAsItemLayout$OnCheckChangedListener;

    return-object v0
.end method

.method public static final synthetic d(Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;)Lcom/samsung/android/app/musiclibrary/ui/PermissionManager$OnPermissionResultListener;
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->c()Lcom/samsung/android/app/musiclibrary/ui/PermissionManager$OnPermissionResultListener;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic e(Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;)J
    .locals 2

    .line 51
    iget-wide v0, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->c:J

    return-wide v0
.end method

.method private final e()V
    .locals 3

    .line 243
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f0b0179

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    :cond_0
    const v0, 0x7f13036f

    .line 244
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/BottomNavigationView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 245
    new-instance v2, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$initMenuControllerInternal$$inlined$apply$lambda$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$initMenuControllerInternal$$inlined$apply$lambda$1;-><init>(Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;)V

    check-cast v2, Landroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/BottomNavigationView;->setOnNavigationItemSelectedListener(Landroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;)V

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 255
    invoke-virtual {v0}, Landroid/support/design/widget/BottomNavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    if-eqz v0, :cond_2

    const v2, 0x7f1305f2

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 256
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 255
    :goto_1
    iput-object v0, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->f:Landroid/view/MenuItem;

    return-void
.end method

.method public static final synthetic f(Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;)Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$setAsToneGroup$1;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->m:Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$setAsToneGroup$1;

    return-object p0
.end method

.method private final f()V
    .locals 4

    .line 261
    iget-object v0, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->m:Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$setAsToneGroup$1;

    invoke-direct {p0}, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->d()Lcom/samsung/android/app/music/player/setas/widget/SetAsItemLayout$OnCheckChangedListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$setAsToneGroup$1;->a(Lcom/samsung/android/app/music/player/setas/widget/SetAsItemLayout$OnCheckChangedListener;)V

    .line 262
    sget-object v0, Lcom/samsung/android/app/music/player/setas/SetAsGroupBuilder;->ToneGroup:Lcom/samsung/android/app/music/player/setas/SetAsGroupBuilder;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->m:Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$setAsToneGroup$1;

    check-cast v2, Lcom/samsung/android/app/music/player/setas/widget/SetAsItemGroup;

    iget-object v3, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->e:Lcom/samsung/android/app/musiclibrary/ui/widget/round/RoundedLinearLayout;

    check-cast v3, Landroid/view/View;

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/music/player/setas/SetAsGroupBuilder;->build(Landroid/content/Context;Lcom/samsung/android/app/music/player/setas/widget/SetAsItemGroup;Landroid/view/View;)V

    .line 264
    iget-object v0, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->l:Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$setAsRecommendGroup$1;

    invoke-direct {p0}, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->d()Lcom/samsung/android/app/music/player/setas/widget/SetAsItemLayout$OnCheckChangedListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$setAsRecommendGroup$1;->a(Lcom/samsung/android/app/music/player/setas/widget/SetAsItemLayout$OnCheckChangedListener;)V

    .line 265
    sget-object v0, Lcom/samsung/android/app/music/player/setas/SetAsGroupBuilder;->RecommendGroup:Lcom/samsung/android/app/music/player/setas/SetAsGroupBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->l:Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$setAsRecommendGroup$1;

    check-cast v2, Lcom/samsung/android/app/music/player/setas/widget/SetAsItemGroup;

    iget-object v3, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->d:Lcom/samsung/android/app/musiclibrary/ui/widget/round/RoundedLinearLayout;

    check-cast v3, Landroid/view/View;

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/music/player/setas/SetAsGroupBuilder;->build(Landroid/content/Context;Lcom/samsung/android/app/music/player/setas/widget/SetAsItemGroup;Landroid/view/View;)V

    .line 267
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->b_:Z

    if-nez v0, :cond_2

    .line 268
    iget-object v0, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->l:Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$setAsRecommendGroup$1;

    const v1, 0x7f13054e

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$setAsRecommendGroup$1;->a(I)Lcom/samsung/android/app/music/player/setas/widget/SetAsItemLayout;

    move-result-object v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 269
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/player/setas/widget/SetAsItemLayout;->setVisibility(I)V

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->l:Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$setAsRecommendGroup$1;

    const v2, 0x7f130094

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$setAsRecommendGroup$1;->a(I)Lcom/samsung/android/app/music/player/setas/widget/SetAsItemLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 272
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/player/setas/widget/SetAsItemLayout;->setVisibility(I)V

    :cond_1
    const v0, 0x7f130553

    .line 274
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 275
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 277
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0b0179

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f0b03f4

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public static final synthetic g(Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;)Landroid/view/MenuItem;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->f:Landroid/view/MenuItem;

    return-object p0
.end method

.method private final g()V
    .locals 2

    .line 283
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_0

    .line 284
    new-instance v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;-><init>(Landroid/app/Activity;)V

    .line 285
    new-instance v1, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$initMultiWindowInternal$$inlined$apply$lambda$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$initMultiWindowInternal$$inlined$apply$lambda$1;-><init>(Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;)V

    check-cast v1, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->setStateChangeListener(Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;)Z

    :cond_0
    return-void
.end method

.method public static final synthetic h(Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;)Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$setAsRecommendGroup$1;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->l:Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$setAsRecommendGroup$1;

    return-object p0
.end method

.method private final h()V
    .locals 8

    .line 303
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 304
    iget-wide v1, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->c:J

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    cmp-long v1, v1, v4

    if-gtz v1, :cond_0

    const v1, 0x7f0b0421

    .line 306
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 305
    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 308
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 309
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->finish()V

    return-void

    .line 312
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 315
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->m:Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$setAsToneGroup$1;

    const v4, 0x7f13054f

    invoke-virtual {v2, v4}, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$setAsToneGroup$1;->b(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->m:Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$setAsToneGroup$1;

    const v4, 0x7f130555

    invoke-virtual {v2, v4}, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$setAsToneGroup$1;->b(I)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 318
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->m:Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$setAsToneGroup$1;

    const v4, 0x7f130556

    invoke-virtual {v2, v4}, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$setAsToneGroup$1;->b(I)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "is_alarm"

    const-string v4, "1"

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :goto_0
    const-string v2, "is_ringtone"

    const-string v4, "1"

    .line 317
    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v4, "SetAs-SetAsActivity"

    .line 326
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveRingtone() occur="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v2

    const-string v4, "SetAs-SetAsActivity"

    .line 324
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveRingtone() occur="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->g:Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;->a()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_6

    const-string v4, "context"

    .line 331
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->a(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "SetAs-SetAsActivity"

    .line 332
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ringtone base uri="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", file path="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    invoke-direct {p0, v0, v4}, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v0, "SetAs-SetAsActivity"

    const-string v1, "save ringtone failed!"

    .line 335
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    const/4 v4, 0x0

    .line 338
    invoke-static {v0, v2, v1, v4, v4}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 341
    iget-object v0, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->l:Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$setAsRecommendGroup$1;

    const v1, 0x7f13054e

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$setAsRecommendGroup$1;->b(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->g:Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;

    if-eqz v0, :cond_5

    .line 342
    iget-wide v3, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->c:J

    .line 341
    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;->b(J)I

    move-result v3

    :cond_5
    const-string v0, "SetAs-SetAsActivity"

    .line 346
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveRingtone highlightOffset="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    iget-object v0, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->m:Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$setAsToneGroup$1;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$setAsToneGroup$1;->b()I

    move-result v0

    .line 349
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->a()Lcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController;

    move-result-object v1

    .line 350
    new-instance v4, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$saveRingtone$1;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$saveRingtone$1;-><init>(Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;)V

    check-cast v4, Lcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController$OnSetAsRingtoneListener;

    .line 349
    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController;->a(ILandroid/net/Uri;ILcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController$OnSetAsRingtoneListener;)V

    return-void

    :cond_6
    return-void
.end method


# virtual methods
.method public getScreenId()Ljava/lang/String;
    .locals 1

    const-string v0, "309"

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    const-string v0, "SetAs-SetAsActivity"

    const-string v1, "onConfigurationChanged()"

    .line 198
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 200
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->isMultiWindowMode()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const-string v0, "window"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/view/WindowExtensionKt;->c(Landroid/view/Window;Z)V

    .line 201
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->g:Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;->d()V

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 145
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f040236

    .line 147
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->setContentView(I)V

    const p1, 0x7f13054d

    .line 148
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/widget/round/RoundedLinearLayout;

    const/4 v1, 0x0

    const v2, 0x7f0f003a

    const/16 v3, 0xf

    if-eqz v0, :cond_0

    .line 149
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/widget/round/RoundedLinearLayout;->a(ILjava/lang/Integer;)V

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 148
    :goto_0
    iput-object v0, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->d:Lcom/samsung/android/app/musiclibrary/ui/widget/round/RoundedLinearLayout;

    const v0, 0x7f130554

    .line 151
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/widget/round/RoundedLinearLayout;

    if-eqz v0, :cond_1

    .line 152
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/round/RoundedLinearLayout;->a(ILjava/lang/Integer;)V

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 151
    :goto_1
    iput-object v0, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->e:Lcom/samsung/android/app/musiclibrary/ui/widget/round/RoundedLinearLayout;

    .line 155
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "intent"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "extra_audio_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->c:J

    .line 158
    iget-wide v0, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->c:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->a(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    .line 159
    iput-wide v0, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->c:J

    .line 161
    :cond_2
    new-instance v0, Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;

    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v2, "findViewById(R.id.set_as_recommend)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->g:Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;

    .line 162
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->b()Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;

    move-result-object p1

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 163
    iget-object p1, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->g:Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;

    if-eqz p1, :cond_3

    iget-wide v0, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->c:J

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;->a(J)V

    .line 166
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->e()V

    .line 167
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->f()V

    .line 168
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->g()V

    return-void

    .line 155
    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Long"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected onDestroy()V
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->g:Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;->release()V

    .line 194
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->g:Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;->b()V

    .line 189
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onPause()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    const-string p1, "permissions"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "grantResults"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "savedInstanceState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 212
    iget-object v0, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->m:Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$setAsToneGroup$1;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$setAsToneGroup$1;->b(Landroid/os/Bundle;)V

    .line 213
    iget-object v0, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->l:Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$setAsRecommendGroup$1;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$setAsRecommendGroup$1;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 172
    invoke-super {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onResume()V

    .line 173
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->b()Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;

    move-result-object v0

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->l:Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$setAsRecommendGroup$1;

    const v2, 0x7f130094

    .line 175
    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$setAsRecommendGroup$1;->b(IZ)V

    const v2, 0x7f13054e

    .line 176
    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$setAsRecommendGroup$1;->b(IZ)V

    .line 178
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->b()Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->b()V

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->m:Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$setAsToneGroup$1;

    const v2, 0x7f13054f

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$setAsToneGroup$1;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->b()Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;

    move-result-object v0

    const-string v3, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->m:Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$setAsToneGroup$1;

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$setAsToneGroup$1;->b(IZ)V

    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->l:Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$setAsRecommendGroup$1;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$setAsRecommendGroup$1;->a(Landroid/os/Bundle;)V

    .line 206
    iget-object v0, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;->m:Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$setAsToneGroup$1;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$setAsToneGroup$1;->a(Landroid/os/Bundle;)V

    .line 207
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
