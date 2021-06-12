.class final Lcom/samsung/android/app/music/util/ShortCutUtils$NougatShortcutCompatImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/util/ShortCutUtils$ShortcutCompatImpl;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x19
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/util/ShortCutUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NougatShortcutCompatImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/util/ShortCutUtils$NougatShortcutCompatImpl$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/util/ShortCutUtils$NougatShortcutCompatImpl$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/util/ShortCutUtils$NougatShortcutCompatImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/util/ShortCutUtils$NougatShortcutCompatImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/util/ShortCutUtils$NougatShortcutCompatImpl;->a:Lcom/samsung/android/app/music/util/ShortCutUtils$NougatShortcutCompatImpl$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 571
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyword"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 580
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 581
    sget-object v1, Lcom/samsung/android/app/music/util/ShortCutUtils;->a:Lcom/samsung/android/app/music/util/ShortCutUtils;

    invoke-static {v1, p2, p3, p4, p5}, Lcom/samsung/android/app/music/util/ShortCutUtils;->a(Lcom/samsung/android/app/music/util/ShortCutUtils;ILjava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p2

    const-string p4, "android.intent.extra.shortcut.INTENT"

    .line 582
    check-cast p2, Landroid/os/Parcelable;

    invoke-virtual {v0, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p2, "android.intent.extra.shortcut.NAME"

    .line 583
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 584
    sget-object p2, Lcom/samsung/android/app/music/util/ShortCutUtils;->a:Lcom/samsung/android/app/music/util/ShortCutUtils;

    invoke-static {p2, p1}, Lcom/samsung/android/app/music/util/ShortCutUtils;->a(Lcom/samsung/android/app/music/util/ShortCutUtils;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string p3, "android.intent.extra.shortcut.ICON"

    .line 586
    check-cast p2, Landroid/os/Parcelable;

    invoke-virtual {v0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string p2, "android.intent.extra.shortcut.ICON_RESOURCE"

    const/high16 p3, 0x7f030000

    .line 590
    invoke-static {p1, p3}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object p3

    check-cast p3, Landroid/os/Parcelable;

    .line 588
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :goto_0
    const/high16 p2, 0x10000000

    .line 593
    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 595
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 619
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.music.intent.action.LAUNCH_FROM_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "launchListType"

    .line 620
    sget-object v2, Lcom/samsung/android/app/music/util/ShortCutUtils;->a:Lcom/samsung/android/app/music/util/ShortCutUtils;

    invoke-static {v2, p2}, Lcom/samsung/android/app/music/util/ShortCutUtils;->a(Lcom/samsung/android/app/music/util/ShortCutUtils;Landroid/content/Intent;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "launchListID"

    .line 621
    sget-object v2, Lcom/samsung/android/app/music/util/ShortCutUtils;->a:Lcom/samsung/android/app/music/util/ShortCutUtils;

    invoke-static {v2, p2}, Lcom/samsung/android/app/music/util/ShortCutUtils;->c(Lcom/samsung/android/app/music/util/ShortCutUtils;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "launchListName"

    .line 622
    sget-object v2, Lcom/samsung/android/app/music/util/ShortCutUtils;->a:Lcom/samsung/android/app/music/util/ShortCutUtils;

    invoke-static {v2, p2}, Lcom/samsung/android/app/music/util/ShortCutUtils;->b(Lcom/samsung/android/app/music/util/ShortCutUtils;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 624
    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 625
    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 627
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :goto_0
    const-string v1, "launchListGroup"

    .line 630
    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "launchListGroup"

    .line 631
    sget-object v2, Lcom/samsung/android/app/music/util/ShortCutUtils;->a:Lcom/samsung/android/app/music/util/ShortCutUtils;

    invoke-static {v2, p2}, Lcom/samsung/android/app/music/util/ShortCutUtils;->d(Lcom/samsung/android/app/music/util/ShortCutUtils;Landroid/content/Intent;)I

    move-result v2

    .line 630
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 634
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.launcher.action.UNINSTALL_SHORTCUT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.extra.shortcut.INTENT"

    .line 635
    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.shortcut.NAME"

    .line 636
    sget-object v2, Lcom/samsung/android/app/music/util/ShortCutUtils;->a:Lcom/samsung/android/app/music/util/ShortCutUtils;

    invoke-static {v2, p2}, Lcom/samsung/android/app/music/util/ShortCutUtils;->b(Lcom/samsung/android/app/music/util/ShortCutUtils;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 637
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 639
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string p1, "ShortCutUtils"

    .line 644
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeInvalidShortcut() intent listType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/app/music/util/ShortCutUtils;->a:Lcom/samsung/android/app/music/util/ShortCutUtils;

    invoke-static {v1, p2}, Lcom/samsung/android/app/music/util/ShortCutUtils;->a(Lcom/samsung/android/app/music/util/ShortCutUtils;Landroid/content/Intent;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/app/music/util/ShortCutUtils;->a:Lcom/samsung/android/app/music/util/ShortCutUtils;

    invoke-static {v1, p2}, Lcom/samsung/android/app/music/util/ShortCutUtils;->b(Lcom/samsung/android/app/music/util/ShortCutUtils;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/app/music/util/ShortCutUtils;->a:Lcom/samsung/android/app/music/util/ShortCutUtils;

    invoke-static {v1, p2}, Lcom/samsung/android/app/music/util/ShortCutUtils;->b(Lcom/samsung/android/app/music/util/ShortCutUtils;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 642
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyword"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 606
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.launcher.action.UNINSTALL_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.extra.shortcut.INTENT"

    .line 609
    sget-object v2, Lcom/samsung/android/app/music/util/ShortCutUtils;->a:Lcom/samsung/android/app/music/util/ShortCutUtils;

    invoke-static {v2, p2, p3, p4, p5}, Lcom/samsung/android/app/music/util/ShortCutUtils;->a(Lcom/samsung/android/app/music/util/ShortCutUtils;ILjava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p2

    check-cast p2, Landroid/os/Parcelable;

    .line 607
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p2, "android.intent.extra.shortcut.NAME"

    .line 611
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    .line 612
    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 614
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
