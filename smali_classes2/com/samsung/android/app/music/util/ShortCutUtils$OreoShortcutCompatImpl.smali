.class final Lcom/samsung/android/app/music/util/ShortCutUtils$OreoShortcutCompatImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/util/ShortCutUtils$ShortcutCompatImpl;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1a
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/util/ShortCutUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OreoShortcutCompatImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/util/ShortCutUtils$OreoShortcutCompatImpl$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/util/ShortCutUtils$OreoShortcutCompatImpl$Companion;


# instance fields
.field private final b:Lcom/samsung/android/app/music/util/ShortCutUtils$NougatShortcutCompatImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/util/ShortCutUtils$OreoShortcutCompatImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/util/ShortCutUtils$OreoShortcutCompatImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/util/ShortCutUtils$OreoShortcutCompatImpl;->a:Lcom/samsung/android/app/music/util/ShortCutUtils$OreoShortcutCompatImpl$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 435
    new-instance v0, Lcom/samsung/android/app/music/util/ShortCutUtils$NougatShortcutCompatImpl;

    invoke-direct {v0}, Lcom/samsung/android/app/music/util/ShortCutUtils$NougatShortcutCompatImpl;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/util/ShortCutUtils$OreoShortcutCompatImpl;->b:Lcom/samsung/android/app/music/util/ShortCutUtils$NougatShortcutCompatImpl;

    return-void
.end method

.method private final a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;
    .locals 2

    .line 532
    const-class v0, Landroid/content/pm/ShortcutManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ShortcutManager;

    const-string v0, "shortcutManager"

    .line 533
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/pm/ShortcutManager;->isRequestPinShortcutSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 534
    invoke-virtual {p1}, Landroid/content/pm/ShortcutManager;->getPinnedShortcuts()Ljava/util/List;

    move-result-object p1

    const-string v0, "shortcutManager.pinnedShortcuts"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    .line 692
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutInfo;

    const-string v1, "it"

    .line 535
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private final a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x5e

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/samsung/android/app/music/util/ShortCutUtils;->a:Lcom/samsung/android/app/music/util/ShortCutUtils;

    invoke-static {p1}, Lcom/samsung/android/app/music/util/ShortCutUtils;->a(Lcom/samsung/android/app/music/util/ShortCutUtils;)Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 558
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 560
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/high16 v1, 0x10000

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    const-string v0, "ShortCutUtils"

    .line 561
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentLauncherPackageName()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v0, "resolveInfo.activityInfo.packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final b(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    .line 543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 544
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/util/ShortCutUtils$OreoShortcutCompatImpl;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "^"

    .line 545
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    sget-object p1, Lcom/samsung/android/app/music/util/ShortCutUtils;->a:Lcom/samsung/android/app/music/util/ShortCutUtils;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/util/ShortCutUtils;->a(Lcom/samsung/android/app/music/util/ShortCutUtils;Landroid/content/Intent;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "^"

    .line 547
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    sget-object p1, Lcom/samsung/android/app/music/util/ShortCutUtils;->a:Lcom/samsung/android/app/music/util/ShortCutUtils;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/util/ShortCutUtils;->d(Lcom/samsung/android/app/music/util/ShortCutUtils;Landroid/content/Intent;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "^"

    .line 549
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    sget-object p1, Lcom/samsung/android/app/music/util/ShortCutUtils;->a:Lcom/samsung/android/app/music/util/ShortCutUtils;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/util/ShortCutUtils;->c(Lcom/samsung/android/app/music/util/ShortCutUtils;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "^"

    .line 551
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    sget-object p1, Lcom/samsung/android/app/music/util/ShortCutUtils;->a:Lcom/samsung/android/app/music/util/ShortCutUtils;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/util/ShortCutUtils;->b(Lcom/samsung/android/app/music/util/ShortCutUtils;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyword"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 444
    const-class v0, Landroid/content/pm/ShortcutManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutManager;

    const-string v1, "ShortCutUtils"

    .line 448
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addShortcut() - isRequestPinShortcutSupported : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "shortcutManager"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/pm/ShortcutManager;->isRequestPinShortcutSupported()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 445
    invoke-static {v3, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(ZLjava/lang/String;Ljava/lang/String;)V

    .line 450
    invoke-virtual {v0}, Landroid/content/pm/ShortcutManager;->isRequestPinShortcutSupported()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 452
    :cond_0
    invoke-direct {p0, p2, p3, p4}, Lcom/samsung/android/app/music/util/ShortCutUtils$OreoShortcutCompatImpl;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 453
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/app/music/util/ShortCutUtils$OreoShortcutCompatImpl;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v2

    const-string v4, "ShortCutUtils"

    .line 457
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addShortcut() - shortcut id : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", shortcutInfo : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 454
    invoke-static {v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(ZLjava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 459
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_1

    .line 460
    new-array p1, v3, [Ljava/lang/String;

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v4

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/pm/ShortcutManager;->enableShortcuts(Ljava/util/List;)V

    goto :goto_2

    .line 462
    :cond_1
    new-instance v2, Landroid/content/pm/ShortcutInfo$Builder;

    invoke-direct {v2, p1, v1}, Landroid/content/pm/ShortcutInfo$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 463
    move-object v1, p3

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setShortLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 464
    sget-object v1, Lcom/samsung/android/app/music/util/ShortCutUtils;->a:Lcom/samsung/android/app/music/util/ShortCutUtils;

    invoke-static {v1, p2, p3, p4, p5}, Lcom/samsung/android/app/music/util/ShortCutUtils;->a(Lcom/samsung/android/app/music/util/ShortCutUtils;ILjava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroid/content/pm/ShortcutInfo$Builder;->setIntent(Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 466
    sget-object p2, Lcom/samsung/android/app/music/util/ShortCutUtils;->a:Lcom/samsung/android/app/music/util/ShortCutUtils;

    invoke-static {p2, p1}, Lcom/samsung/android/app/music/util/ShortCutUtils;->a(Lcom/samsung/android/app/music/util/ShortCutUtils;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-static {p2}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object p2

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    const/high16 p2, 0x7f030000

    .line 467
    invoke-static {p1, p2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object p2

    :goto_1
    invoke-virtual {v2, p2}, Landroid/content/pm/ShortcutInfo$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/content/pm/ShortcutInfo$Builder;

    const p2, 0x7f0b02e1

    .line 468
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {v2, p2}, Landroid/content/pm/ShortcutInfo$Builder;->setDisabledMessage(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 469
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo$Builder;->build()Landroid/content/pm/ShortcutInfo;

    move-result-object p2

    .line 474
    invoke-virtual {v0, p2}, Landroid/content/pm/ShortcutManager;->createShortcutResultIntent(Landroid/content/pm/ShortcutInfo;)Landroid/content/Intent;

    move-result-object p3

    .line 471
    invoke-static {p1, v4, p3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    const-string p3, "successCallback"

    .line 477
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Landroid/content/pm/ShortcutManager;->requestPinShortcut(Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;)Z

    :goto_2
    return-void
.end method

.method public a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 495
    const-class v0, Landroid/content/pm/ShortcutManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutManager;

    const-string v1, "shortcutManager"

    .line 496
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/pm/ShortcutManager;->isRequestPinShortcutSupported()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 500
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/util/ShortCutUtils$OreoShortcutCompatImpl;->b(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 501
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/app/music/util/ShortCutUtils$OreoShortcutCompatImpl;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 502
    new-array v2, v4, [Ljava/lang/String;

    aput-object v1, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutManager;->disableShortcuts(Ljava/util/List;)V

    const-string v1, "ShortCutUtils"

    .line 507
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeInvalidShortcut() old id listType="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/samsung/android/app/music/util/ShortCutUtils;->a:Lcom/samsung/android/app/music/util/ShortCutUtils;

    invoke-static {v5, p2}, Lcom/samsung/android/app/music/util/ShortCutUtils;->a(Lcom/samsung/android/app/music/util/ShortCutUtils;Landroid/content/Intent;)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", name="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/samsung/android/app/music/util/ShortCutUtils;->a:Lcom/samsung/android/app/music/util/ShortCutUtils;

    invoke-static {v5, p2}, Lcom/samsung/android/app/music/util/ShortCutUtils;->b(Lcom/samsung/android/app/music/util/ShortCutUtils;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", id="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/samsung/android/app/music/util/ShortCutUtils;->a:Lcom/samsung/android/app/music/util/ShortCutUtils;

    invoke-static {v5, p2}, Lcom/samsung/android/app/music/util/ShortCutUtils;->b(Lcom/samsung/android/app/music/util/ShortCutUtils;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 505
    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    .line 512
    sget-object v2, Lcom/samsung/android/app/music/util/ShortCutUtils;->a:Lcom/samsung/android/app/music/util/ShortCutUtils;

    invoke-static {v2, p2}, Lcom/samsung/android/app/music/util/ShortCutUtils;->a(Lcom/samsung/android/app/music/util/ShortCutUtils;Landroid/content/Intent;)I

    move-result v2

    sget-object v5, Lcom/samsung/android/app/music/util/ShortCutUtils;->a:Lcom/samsung/android/app/music/util/ShortCutUtils;

    invoke-static {v5, p2}, Lcom/samsung/android/app/music/util/ShortCutUtils;->b(Lcom/samsung/android/app/music/util/ShortCutUtils;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "intent.name()"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lcom/samsung/android/app/music/util/ShortCutUtils;->a:Lcom/samsung/android/app/music/util/ShortCutUtils;

    invoke-static {v6, p2}, Lcom/samsung/android/app/music/util/ShortCutUtils;->c(Lcom/samsung/android/app/music/util/ShortCutUtils;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "intent.keyword()"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2, v5, v6}, Lcom/samsung/android/app/music/util/ShortCutUtils$OreoShortcutCompatImpl;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 513
    invoke-direct {p0, p1, v2}, Lcom/samsung/android/app/music/util/ShortCutUtils$OreoShortcutCompatImpl;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 514
    new-array v1, v4, [Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutManager;->disableShortcuts(Ljava/util/List;)V

    const-string v0, "ShortCutUtils"

    .line 519
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeInvalidShortcut() id listType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/app/music/util/ShortCutUtils;->a:Lcom/samsung/android/app/music/util/ShortCutUtils;

    invoke-static {v2, p2}, Lcom/samsung/android/app/music/util/ShortCutUtils;->a(Lcom/samsung/android/app/music/util/ShortCutUtils;Landroid/content/Intent;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/app/music/util/ShortCutUtils;->a:Lcom/samsung/android/app/music/util/ShortCutUtils;

    invoke-static {v2, p2}, Lcom/samsung/android/app/music/util/ShortCutUtils;->b(Lcom/samsung/android/app/music/util/ShortCutUtils;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/app/music/util/ShortCutUtils;->a:Lcom/samsung/android/app/music/util/ShortCutUtils;

    invoke-static {v2, p2}, Lcom/samsung/android/app/music/util/ShortCutUtils;->b(Lcom/samsung/android/app/music/util/ShortCutUtils;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 517
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    :cond_2
    if-nez v1, :cond_3

    .line 524
    iget-object v0, p0, Lcom/samsung/android/app/music/util/ShortCutUtils$OreoShortcutCompatImpl;->b:Lcom/samsung/android/app/music/util/ShortCutUtils$NougatShortcutCompatImpl;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/util/ShortCutUtils$NougatShortcutCompatImpl;->a(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_3
    return-void
.end method

.method public b(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const-string p5, "context"

    invoke-static {p1, p5}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "name"

    invoke-static {p3, p5}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "keyword"

    invoke-static {p4, p5}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 488
    const-class p5, Landroid/content/pm/ShortcutManager;

    invoke-virtual {p1, p5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ShortcutManager;

    const-string p5, "shortcutManager"

    .line 489
    invoke-static {p1, p5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/pm/ShortcutManager;->isRequestPinShortcutSupported()Z

    move-result p5

    if-nez p5, :cond_0

    return-void

    :cond_0
    const/4 p5, 0x1

    .line 491
    new-array p5, p5, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, p4}, Lcom/samsung/android/app/music/util/ShortCutUtils$OreoShortcutCompatImpl;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p5, v0

    invoke-static {p5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/pm/ShortcutManager;->disableShortcuts(Ljava/util/List;)V

    return-void
.end method
