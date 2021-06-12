.class public final Lcom/samsung/android/app/music/util/ShortCutUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/util/ShortCutUtils$OreoShortcutCompatImpl;,
        Lcom/samsung/android/app/music/util/ShortCutUtils$NougatShortcutCompatImpl;,
        Lcom/samsung/android/app/music/util/ShortCutUtils$ShortcutCompatImpl;,
        Lcom/samsung/android/app/music/util/ShortCutUtils$ShortcutAddable;,
        Lcom/samsung/android/app/music/util/ShortCutUtils$LaunchData;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/util/ShortCutUtils;

.field private static final b:Landroid/content/ComponentName;

.field private static final c:Lcom/samsung/android/app/music/util/ShortCutUtils$ShortcutCompatImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 32
    new-instance v0, Lcom/samsung/android/app/music/util/ShortCutUtils;

    invoke-direct {v0}, Lcom/samsung/android/app/music/util/ShortCutUtils;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/util/ShortCutUtils;->a:Lcom/samsung/android/app/music/util/ShortCutUtils;

    .line 41
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.sec.android.app.music"

    const-class v2, Lcom/samsung/android/app/music/ActivityLauncher;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/util/ShortCutUtils;->b:Landroid/content/ComponentName;

    .line 43
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 44
    new-instance v0, Lcom/samsung/android/app/music/util/ShortCutUtils$OreoShortcutCompatImpl;

    invoke-direct {v0}, Lcom/samsung/android/app/music/util/ShortCutUtils$OreoShortcutCompatImpl;-><init>()V

    check-cast v0, Lcom/samsung/android/app/music/util/ShortCutUtils$ShortcutCompatImpl;

    goto :goto_0

    .line 46
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/util/ShortCutUtils$NougatShortcutCompatImpl;

    invoke-direct {v0}, Lcom/samsung/android/app/music/util/ShortCutUtils$NougatShortcutCompatImpl;-><init>()V

    check-cast v0, Lcom/samsung/android/app/music/util/ShortCutUtils$ShortcutCompatImpl;

    .line 43
    :goto_0
    sput-object v0, Lcom/samsung/android/app/music/util/ShortCutUtils;->c:Lcom/samsung/android/app/music/util/ShortCutUtils$ShortcutCompatImpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Landroid/content/Intent;)I
    .locals 2

    const-string v0, "launchListType"

    const/4 v1, -0x1

    .line 656
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/util/ShortCutUtils;Landroid/content/Intent;)I
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/util/ShortCutUtils;->a(Landroid/content/Intent;)I

    move-result p0

    return p0
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/util/ShortCutUtils;)Landroid/content/ComponentName;
    .locals 0

    .line 32
    sget-object p0, Lcom/samsung/android/app/music/util/ShortCutUtils;->b:Landroid/content/ComponentName;

    return-object p0
.end method

.method private final a(ILjava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 2

    .line 403
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.music.intent.action.LAUNCH_FROM_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 404
    sget-object v1, Lcom/samsung/android/app/music/util/ShortCutUtils;->b:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "launchListType"

    .line 405
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "launchListName"

    .line 406
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "launchListID"

    .line 407
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, -0x1

    if-eq p4, p1, :cond_0

    const-string p1, "launchListGroup"

    .line 408
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    return-object v0
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/util/ShortCutUtils;ILjava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/util/ShortCutUtils;->a(ILjava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private final a(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 5

    .line 414
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "current_sec_active_themepackage"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 415
    check-cast v1, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    const-string v2, "ShortCutUtils"

    .line 419
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getThemeApplicationIconBitmap(), activeThemePackage="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 417
    invoke-static {v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 424
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    .line 423
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.graphics.drawable.BitmapDrawable"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 426
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_1
    move-object p1, v1

    :goto_0
    return-object p1
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/util/ShortCutUtils;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/util/ShortCutUtils;->a(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 8

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyword"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ShortCutUtils"

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addShortcut() listType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", keyword="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", extraValue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", IMPL="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/app/music/util/ShortCutUtils;->c:Lcom/samsung/android/app/music/util/ShortCutUtils$ShortcutCompatImpl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 58
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    sget-object v2, Lcom/samsung/android/app/music/util/ShortCutUtils;->c:Lcom/samsung/android/app/music/util/ShortCutUtils$ShortcutCompatImpl;

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    invoke-interface/range {v2 .. v7}, Lcom/samsung/android/app/music/util/ShortCutUtils$ShortcutCompatImpl;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x10

    if-eqz p5, :cond_0

    const/4 p4, -0x1

    .line 56
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/util/ShortCutUtils;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static final a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    sget-object v0, Lcom/samsung/android/app/music/util/ShortCutUtils;->c:Lcom/samsung/android/app/music/util/ShortCutUtils$ShortcutCompatImpl;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/app/music/util/ShortCutUtils$ShortcutCompatImpl;->a(Landroid/content/Context;Landroid/content/Intent;)V

    const p1, 0x7f0b02e1

    .line 83
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(R.stri\u2026ed_shortcut_disabled_msg)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static final b(Landroid/content/Context;Landroid/content/Intent;)Lcom/samsung/android/app/music/util/ShortCutUtils$LaunchData;
    .locals 4

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    sget-object v0, Lcom/samsung/android/app/music/util/ShortCutUtils;->a:Lcom/samsung/android/app/music/util/ShortCutUtils;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/util/ShortCutUtils;->a(Landroid/content/Intent;)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    .line 98
    :sswitch_0
    sget-object v0, Lcom/samsung/android/app/music/util/ShortCutUtils;->a:Lcom/samsung/android/app/music/util/ShortCutUtils;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/util/ShortCutUtils;->i(Landroid/content/Context;Landroid/content/Intent;)Lcom/samsung/android/app/music/util/ShortCutUtils$LaunchData;

    move-result-object p0

    goto :goto_0

    .line 97
    :sswitch_1
    sget-object v0, Lcom/samsung/android/app/music/util/ShortCutUtils;->a:Lcom/samsung/android/app/music/util/ShortCutUtils;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/util/ShortCutUtils;->h(Landroid/content/Context;Landroid/content/Intent;)Lcom/samsung/android/app/music/util/ShortCutUtils$LaunchData;

    move-result-object p0

    goto :goto_0

    .line 96
    :sswitch_2
    sget-object v0, Lcom/samsung/android/app/music/util/ShortCutUtils;->a:Lcom/samsung/android/app/music/util/ShortCutUtils;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/util/ShortCutUtils;->g(Landroid/content/Context;Landroid/content/Intent;)Lcom/samsung/android/app/music/util/ShortCutUtils$LaunchData;

    move-result-object p0

    goto :goto_0

    .line 93
    :sswitch_3
    sget-object v0, Lcom/samsung/android/app/music/util/ShortCutUtils;->a:Lcom/samsung/android/app/music/util/ShortCutUtils;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/util/ShortCutUtils;->c(Landroid/content/Context;Landroid/content/Intent;)Lcom/samsung/android/app/music/util/ShortCutUtils$LaunchData;

    move-result-object p0

    goto :goto_0

    .line 95
    :sswitch_4
    sget-object v0, Lcom/samsung/android/app/music/util/ShortCutUtils;->a:Lcom/samsung/android/app/music/util/ShortCutUtils;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/util/ShortCutUtils;->e(Landroid/content/Context;Landroid/content/Intent;)Lcom/samsung/android/app/music/util/ShortCutUtils$LaunchData;

    move-result-object p0

    goto :goto_0

    .line 94
    :sswitch_5
    sget-object v0, Lcom/samsung/android/app/music/util/ShortCutUtils;->a:Lcom/samsung/android/app/music/util/ShortCutUtils;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/util/ShortCutUtils;->d(Landroid/content/Context;Landroid/content/Intent;)Lcom/samsung/android/app/music/util/ShortCutUtils$LaunchData;

    move-result-object p0

    goto :goto_0

    .line 101
    :sswitch_6
    new-instance p0, Lcom/samsung/android/app/music/util/ShortCutUtils$LaunchData;

    .line 102
    sget-object v0, Lcom/samsung/android/app/music/util/ShortCutUtils;->a:Lcom/samsung/android/app/music/util/ShortCutUtils;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/util/ShortCutUtils;->a(Landroid/content/Intent;)I

    move-result v0

    .line 103
    sget-object v1, Lcom/samsung/android/app/music/util/ShortCutUtils;->a:Lcom/samsung/android/app/music/util/ShortCutUtils;

    invoke-direct {v1, p1}, Lcom/samsung/android/app/music/util/ShortCutUtils;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "intent.name()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    sget-object v2, Lcom/samsung/android/app/music/util/ShortCutUtils;->a:Lcom/samsung/android/app/music/util/ShortCutUtils;

    invoke-direct {v2, p1}, Lcom/samsung/android/app/music/util/ShortCutUtils;->c(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "intent.keyword()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    sget-object v3, Lcom/samsung/android/app/music/util/ShortCutUtils;->a:Lcom/samsung/android/app/music/util/ShortCutUtils;

    invoke-direct {v3, p1}, Lcom/samsung/android/app/music/util/ShortCutUtils;->d(Landroid/content/Intent;)I

    move-result p1

    .line 101
    invoke-direct {p0, v0, v1, v2, p1}, Lcom/samsung/android/app/music/util/ShortCutUtils$LaunchData;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    :goto_0
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x54 -> :sswitch_6
        0x55 -> :sswitch_6
        0x66 -> :sswitch_6
        0x100002 -> :sswitch_5
        0x100003 -> :sswitch_4
        0x100004 -> :sswitch_3
        0x100006 -> :sswitch_2
        0x100007 -> :sswitch_1
        0x100008 -> :sswitch_0
        0x100050 -> :sswitch_3
    .end sparse-switch
.end method

.method private final b(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    const-string v0, "launchListName"

    .line 657
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/util/ShortCutUtils;Landroid/content/Intent;)Ljava/lang/String;
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/util/ShortCutUtils;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 8

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyword"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ShortCutUtils"

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeShortcut() listType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", keyword="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", extraValue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", IMPL="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/app/music/util/ShortCutUtils;->c:Lcom/samsung/android/app/music/util/ShortCutUtils$ShortcutCompatImpl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 73
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    sget-object v2, Lcom/samsung/android/app/music/util/ShortCutUtils;->c:Lcom/samsung/android/app/music/util/ShortCutUtils$ShortcutCompatImpl;

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    invoke-interface/range {v2 .. v7}, Lcom/samsung/android/app/music/util/ShortCutUtils$ShortcutCompatImpl;->b(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic b(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x10

    if-eqz p5, :cond_0

    const/4 p4, -0x1

    .line 71
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/util/ShortCutUtils;->b(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private final c(Landroid/content/Context;Landroid/content/Intent;)Lcom/samsung/android/app/music/util/ShortCutUtils$LaunchData;
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 113
    invoke-direct {v1, v0}, Lcom/samsung/android/app/music/util/ShortCutUtils;->c(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    .line 114
    invoke-direct {v1, v0}, Lcom/samsung/android/app/music/util/ShortCutUtils;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v5

    .line 116
    invoke-direct {v1, v0}, Lcom/samsung/android/app/music/util/ShortCutUtils;->c(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string v4, "-14"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :pswitch_1
    const-string v4, "-13"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :pswitch_2
    const-string v4, "-12"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :pswitch_3
    const-string v4, "-11"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 121
    :goto_0
    new-instance v2, Lcom/samsung/android/app/music/util/ShortCutUtils$LaunchData;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/music/util/ShortCutUtils;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v8

    const-string v3, "intent.name()"

    invoke-static {v8, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v0}, Lcom/samsung/android/app/music/util/ShortCutUtils;->c(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v9

    const-string v0, "intent.keyword()"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v10, 0x0

    const/16 v11, 0x8

    const/4 v12, 0x0

    const v7, 0x100004

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/app/music/util/ShortCutUtils$LaunchData;-><init>(ILjava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2

    .line 125
    :cond_1
    :goto_1
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->a:Landroid/net/Uri;

    const-string v3, "_id"

    .line 126
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "uri"

    .line 129
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v16, "_id=? AND name=?"

    const/4 v4, 0x2

    .line 132
    new-array v6, v4, [Ljava/lang/String;

    const-string v7, "keyword"

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const-string v8, "name"

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x1

    aput-object v5, v6, v8

    const/16 v18, 0x0

    const/16 v19, 0x10

    const/16 v20, 0x0

    move-object/from16 v13, p1

    move-object v14, v0

    move-object v15, v3

    move-object/from16 v17, v6

    .line 128
    invoke-static/range {v13 .. v20}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Landroid/database/Cursor;

    move-result-object v6

    move-object v10, v6

    check-cast v10, Ljava/io/Closeable;

    const/4 v6, 0x0

    .line 133
    move-object v11, v6

    check-cast v11, Ljava/lang/Throwable;

    :try_start_0
    move-object v9, v10

    check-cast v9, Landroid/database/Cursor;

    if-eqz v9, :cond_2

    .line 134
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12

    if-eqz v12, :cond_2

    const-string v0, "ShortCutUtils"

    .line 135
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "extractLaunchDataPlaylist() match _id, name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", keyword="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    new-instance v0, Lcom/samsung/android/app/music/util/ShortCutUtils$LaunchData;

    invoke-interface {v9, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v2, "c.getString(0)"

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    const v4, 0x100004

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lcom/samsung/android/app/music/util/ShortCutUtils$LaunchData;-><init>(ILjava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    invoke-static {v10, v11}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    .line 138
    :cond_2
    :try_start_1
    sget-object v9, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 133
    invoke-static {v10, v11}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    const-string v16, "source_playlist_id=? AND name=?"

    .line 144
    new-array v4, v4, [Ljava/lang/String;

    aput-object v2, v4, v7

    aput-object v5, v4, v8

    const/16 v18, 0x0

    const/16 v19, 0x10

    const/16 v20, 0x0

    move-object/from16 v13, p1

    move-object v14, v0

    move-object v15, v3

    move-object/from16 v17, v4

    .line 140
    invoke-static/range {v13 .. v20}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Landroid/database/Cursor;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Ljava/io/Closeable;

    .line 145
    :try_start_2
    move-object v4, v10

    check-cast v4, Landroid/database/Cursor;

    if-eqz v4, :cond_3

    .line 146
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v0, "ShortCutUtils"

    .line 149
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "extractLaunchDataPlaylist() match sourceId, name="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", keyword="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 147
    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    new-instance v0, Lcom/samsung/android/app/music/util/ShortCutUtils$LaunchData;

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v2, "c.getString(0)"

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    const v4, 0x100004

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lcom/samsung/android/app/music/util/ShortCutUtils$LaunchData;-><init>(ILjava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v10, v11}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    .line 153
    :cond_3
    :try_start_3
    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 145
    invoke-static {v10, v11}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    const-string v16, "name=?"

    .line 159
    new-array v4, v8, [Ljava/lang/String;

    aput-object v5, v4, v7

    const/16 v18, 0x0

    const/16 v19, 0x10

    const/16 v20, 0x0

    move-object/from16 v13, p1

    move-object v14, v0

    move-object v15, v3

    move-object/from16 v17, v4

    .line 155
    invoke-static/range {v13 .. v20}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Landroid/database/Cursor;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/io/Closeable;

    .line 160
    :try_start_4
    move-object v0, v10

    check-cast v0, Landroid/database/Cursor;

    if-eqz v0, :cond_4

    .line 161
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "ShortCutUtils"

    .line 162
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "extractLaunchDataPlaylist() match name, name="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", keyword="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    new-instance v2, Lcom/samsung/android/app/music/util/ShortCutUtils$LaunchData;

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v0, "c.getString(0)"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    const v4, 0x100004

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/samsung/android/app/music/util/ShortCutUtils$LaunchData;-><init>(ILjava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {v10, v11}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v2

    .line 165
    :cond_4
    :try_start_5
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 160
    invoke-static {v10, v11}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    const-string v0, "ShortCutUtils"

    .line 166
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "extractLaunchDataPlaylist() match failed, name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", keyword="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v6

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v11, v0

    .line 160
    :try_start_6
    throw v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_2
    invoke-static {v10, v11}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v11, v0

    .line 145
    :try_start_7
    throw v11
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_3
    invoke-static {v10, v11}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v11, v0

    .line 133
    :try_start_8
    throw v11
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :goto_4
    invoke-static {v10, v11}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0xaf0d
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final c(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    const-string v0, "launchListID"

    .line 658
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static final synthetic c(Lcom/samsung/android/app/music/util/ShortCutUtils;Landroid/content/Intent;)Ljava/lang/String;
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/util/ShortCutUtils;->c(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final d(Landroid/content/Intent;)I
    .locals 2

    const-string v0, "launchListGroup"

    const/4 v1, -0x1

    .line 659
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public static final synthetic d(Lcom/samsung/android/app/music/util/ShortCutUtils;Landroid/content/Intent;)I
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/util/ShortCutUtils;->d(Landroid/content/Intent;)I

    move-result p0

    return p0
.end method

.method private final d(Landroid/content/Context;Landroid/content/Intent;)Lcom/samsung/android/app/music/util/ShortCutUtils$LaunchData;
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 171
    invoke-direct {v1, v0}, Lcom/samsung/android/app/music/util/ShortCutUtils;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    .line 172
    invoke-direct {v1, v0}, Lcom/samsung/android/app/music/util/ShortCutUtils;->c(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    .line 174
    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Albums;->a:Landroid/net/Uri;

    const-string v5, "_id"

    .line 175
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v13

    const-string v5, "uri"

    .line 178
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "_id=? AND album=?"

    const/4 v14, 0x2

    .line 181
    new-array v9, v14, [Ljava/lang/String;

    const-string v5, "keyword"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v15, 0x0

    aput-object v2, v9, v15

    const-string v5, "name"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v12, 0x1

    aput-object v4, v9, v12

    const/4 v10, 0x0

    const/16 v11, 0x10

    const/16 v16, 0x0

    move-object/from16 v5, p1

    move-object v6, v3

    move-object v7, v13

    move-object/from16 v12, v16

    .line 177
    invoke-static/range {v5 .. v12}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Landroid/database/Cursor;

    move-result-object v5

    move-object v9, v5

    check-cast v9, Ljava/io/Closeable;

    .line 182
    move-object/from16 v12, v16

    check-cast v12, Ljava/lang/Throwable;

    :try_start_0
    move-object v5, v9

    check-cast v5, Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-eqz v5, :cond_0

    .line 183
    :try_start_1
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v3, "ShortCutUtils"

    .line 184
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "extractLaunchDataAlbum() match _id, name="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", keyword="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    new-instance v10, Lcom/samsung/android/app/music/util/ShortCutUtils$LaunchData;

    sget-object v2, Lcom/samsung/android/app/music/util/ShortCutUtils;->a:Lcom/samsung/android/app/music/util/ShortCutUtils;

    invoke-direct {v2, v0}, Lcom/samsung/android/app/music/util/ShortCutUtils;->a(Landroid/content/Intent;)I

    move-result v3

    invoke-interface {v5, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v0, "c.getString(0)"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v2, v10

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/app/music/util/ShortCutUtils$LaunchData;-><init>(ILjava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    invoke-static {v9, v12}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v10

    .line 187
    :cond_0
    :try_start_2
    sget-object v5, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 182
    invoke-static {v9, v12}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 190
    sget-object v5, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Albums;->b:Landroid/net/Uri;

    const-string v6, "MediaContents.Albums.BASE_ALBUM_CONTENT_URI"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "album_id"

    .line 191
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v19

    const-string v20, "source_album_id=? AND album=?"

    .line 193
    new-array v6, v14, [Ljava/lang/String;

    aput-object v2, v6, v15

    const/4 v7, 0x1

    aput-object v4, v6, v7

    const/16 v22, 0x0

    const/16 v23, 0x10

    const/16 v24, 0x0

    move-object/from16 v17, p1

    move-object/from16 v18, v5

    move-object/from16 v21, v6

    .line 189
    invoke-static/range {v17 .. v24}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Landroid/database/Cursor;

    move-result-object v5

    move-object v9, v5

    check-cast v9, Ljava/io/Closeable;

    .line 194
    :try_start_3
    move-object v5, v9

    check-cast v5, Landroid/database/Cursor;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v5, :cond_1

    .line 195
    :try_start_4
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v3, "ShortCutUtils"

    .line 196
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "extractLaunchDataAlbum() match sourceId, name="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", keyword="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    new-instance v10, Lcom/samsung/android/app/music/util/ShortCutUtils$LaunchData;

    sget-object v2, Lcom/samsung/android/app/music/util/ShortCutUtils;->a:Lcom/samsung/android/app/music/util/ShortCutUtils;

    invoke-direct {v2, v0}, Lcom/samsung/android/app/music/util/ShortCutUtils;->a(Landroid/content/Intent;)I

    move-result v3

    invoke-interface {v5, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v0, "c.getString(0)"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v2, v10

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/app/music/util/ShortCutUtils$LaunchData;-><init>(ILjava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    invoke-static {v9, v12}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v10

    .line 199
    :cond_1
    :try_start_5
    sget-object v5, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 194
    invoke-static {v9, v12}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    const-string v8, "album=?"

    .line 202
    new-array v9, v7, [Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/music/util/ShortCutUtils;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "intent.name()"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v5, v9, v15

    const/4 v10, 0x0

    const/16 v11, 0x10

    const/4 v14, 0x0

    move-object/from16 v5, p1

    move-object v6, v3

    move-object v7, v13

    move-object v3, v12

    move-object v12, v14

    .line 201
    invoke-static/range {v5 .. v12}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Landroid/database/Cursor;

    move-result-object v5

    check-cast v5, Ljava/io/Closeable;

    .line 203
    :try_start_6
    move-object v6, v5

    check-cast v6, Landroid/database/Cursor;

    if-eqz v6, :cond_2

    .line 204
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "ShortCutUtils"

    .line 205
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "extractLaunchDataAlbum() match name, name="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", keyword="

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    new-instance v2, Lcom/samsung/android/app/music/util/ShortCutUtils$LaunchData;

    sget-object v4, Lcom/samsung/android/app/music/util/ShortCutUtils;->a:Lcom/samsung/android/app/music/util/ShortCutUtils;

    invoke-direct {v4, v0}, Lcom/samsung/android/app/music/util/ShortCutUtils;->a(Landroid/content/Intent;)I

    move-result v9

    sget-object v4, Lcom/samsung/android/app/music/util/ShortCutUtils;->a:Lcom/samsung/android/app/music/util/ShortCutUtils;

    invoke-direct {v4, v0}, Lcom/samsung/android/app/music/util/ShortCutUtils;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v10

    const-string v0, "intent.name()"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v0, "c.getString(0)"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v12, 0x0

    const/16 v13, 0x8

    const/4 v14, 0x0

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Lcom/samsung/android/app/music/util/ShortCutUtils$LaunchData;-><init>(ILjava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-static {v5, v3}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v2

    .line 208
    :cond_2
    :try_start_7
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 203
    invoke-static {v5, v3}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    const-string v0, "ShortCutUtils"

    .line 210
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "extractLaunchDataAlbum() match failed, name="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", keyword="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v16

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v12, v0

    .line 203
    :try_start_8
    throw v12
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception v0

    move-object v3, v12

    :goto_0
    invoke-static {v5, v3}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :catchall_2
    move-exception v0

    move-object v3, v12

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v12, v0

    .line 194
    :try_start_9
    throw v12
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :catchall_3
    move-exception v0

    :goto_1
    invoke-static {v9, v12}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :catchall_4
    move-exception v0

    move-object v3, v12

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v12, v0

    .line 182
    :try_start_a
    throw v12
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :catchall_5
    move-exception v0

    :goto_2
    invoke-static {v9, v12}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private final e(Landroid/content/Context;Landroid/content/Intent;)Lcom/samsung/android/app/music/util/ShortCutUtils$LaunchData;
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 215
    invoke-direct {v1, v0}, Lcom/samsung/android/app/music/util/ShortCutUtils;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    .line 216
    invoke-direct {v1, v0}, Lcom/samsung/android/app/music/util/ShortCutUtils;->c(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 217
    invoke-direct {v1, v0}, Lcom/samsung/android/app/music/util/ShortCutUtils;->d(Landroid/content/Intent;)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 220
    invoke-direct/range {p0 .. p2}, Lcom/samsung/android/app/music/util/ShortCutUtils;->f(Landroid/content/Context;Landroid/content/Intent;)Lcom/samsung/android/app/music/util/ShortCutUtils$LaunchData;

    move-result-object v0

    return-object v0

    .line 223
    :cond_0
    sget-object v14, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Artists;->a:Landroid/net/Uri;

    const-string v4, "_id"

    .line 224
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v15

    const-string v4, "uri"

    .line 226
    invoke-static {v14, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "_id=? AND artist=?"

    .line 229
    new-array v10, v5, [Ljava/lang/String;

    const-string v4, "keyword"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    aput-object v3, v10, v4

    const-string v6, "name"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v13, 0x1

    aput-object v2, v10, v13

    const/4 v11, 0x0

    const/16 v12, 0x10

    const/16 v16, 0x0

    move-object/from16 v6, p1

    move-object v7, v14

    move-object v8, v15

    move-object/from16 v13, v16

    .line 225
    invoke-static/range {v6 .. v13}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Landroid/database/Cursor;

    move-result-object v6

    check-cast v6, Ljava/io/Closeable;

    const/4 v12, 0x0

    .line 230
    move-object v13, v12

    check-cast v13, Ljava/lang/Throwable;

    :try_start_0
    move-object v7, v6

    check-cast v7, Landroid/database/Cursor;

    if-eqz v7, :cond_1

    .line 231
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v5, "ShortCutUtils"

    .line 232
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "extractLaunchDataArtist() match _id, name="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", keyword="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    new-instance v3, Lcom/samsung/android/app/music/util/ShortCutUtils$LaunchData;

    .line 234
    sget-object v5, Lcom/samsung/android/app/music/util/ShortCutUtils;->a:Lcom/samsung/android/app/music/util/ShortCutUtils;

    invoke-direct {v5, v0}, Lcom/samsung/android/app/music/util/ShortCutUtils;->a(Landroid/content/Intent;)I

    move-result v5

    .line 236
    invoke-interface {v7, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v7, "c.getString(0)"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    sget-object v7, Lcom/samsung/android/app/music/util/ShortCutUtils;->a:Lcom/samsung/android/app/music/util/ShortCutUtils;

    invoke-direct {v7, v0}, Lcom/samsung/android/app/music/util/ShortCutUtils;->d(Landroid/content/Intent;)I

    move-result v0

    .line 233
    invoke-direct {v3, v5, v2, v4, v0}, Lcom/samsung/android/app/music/util/ShortCutUtils$LaunchData;-><init>(ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    invoke-static {v6, v13}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v3

    .line 240
    :cond_1
    :try_start_1
    sget-object v7, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 230
    invoke-static {v6, v13}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 243
    sget-object v6, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Artists;->b:Landroid/net/Uri;

    const-string v7, "MediaContents.Artists.BASE_ARTIST_CONTENT_URI"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "artist_id"

    .line 244
    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v19

    const-string v20, "source_artist_id=? AND artist=?"

    .line 246
    new-array v5, v5, [Ljava/lang/String;

    aput-object v3, v5, v4

    const/4 v7, 0x1

    aput-object v2, v5, v7

    const/16 v22, 0x0

    const/16 v23, 0x10

    const/16 v24, 0x0

    move-object/from16 v17, p1

    move-object/from16 v18, v6

    move-object/from16 v21, v5

    .line 242
    invoke-static/range {v17 .. v24}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Landroid/database/Cursor;

    move-result-object v5

    check-cast v5, Ljava/io/Closeable;

    .line 247
    :try_start_2
    move-object v6, v5

    check-cast v6, Landroid/database/Cursor;

    if-eqz v6, :cond_2

    .line 248
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "artist"

    .line 692
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "getString(getColumnIndexOrThrow(columnName))"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v7, "ShortCutUtils"

    .line 251
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "extractLaunchDataArtist() match sourceId, name="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", keyword="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 249
    invoke-static {v7, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    new-instance v3, Lcom/samsung/android/app/music/util/ShortCutUtils$LaunchData;

    .line 254
    sget-object v7, Lcom/samsung/android/app/music/util/ShortCutUtils;->a:Lcom/samsung/android/app/music/util/ShortCutUtils;

    invoke-direct {v7, v0}, Lcom/samsung/android/app/music/util/ShortCutUtils;->a(Landroid/content/Intent;)I

    move-result v7

    .line 256
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "c.getString(0)"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    sget-object v6, Lcom/samsung/android/app/music/util/ShortCutUtils;->a:Lcom/samsung/android/app/music/util/ShortCutUtils;

    invoke-direct {v6, v0}, Lcom/samsung/android/app/music/util/ShortCutUtils;->d(Landroid/content/Intent;)I

    move-result v0

    .line 253
    invoke-direct {v3, v7, v2, v4, v0}, Lcom/samsung/android/app/music/util/ShortCutUtils$LaunchData;-><init>(ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v5, v13}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v3

    .line 260
    :cond_2
    :try_start_3
    sget-object v6, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 247
    invoke-static {v5, v13}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    const-string v8, "artist=?"

    .line 266
    new-array v9, v7, [Ljava/lang/String;

    aput-object v2, v9, v4

    const/4 v10, 0x0

    const/16 v11, 0x10

    const/16 v16, 0x0

    const/4 v7, 0x0

    move-object/from16 v4, p1

    move-object v5, v14

    move-object v6, v15

    const/4 v14, 0x0

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move v10, v11

    move-object/from16 v11, v16

    .line 262
    invoke-static/range {v4 .. v11}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Landroid/database/Cursor;

    move-result-object v4

    check-cast v4, Ljava/io/Closeable;

    .line 267
    :try_start_4
    move-object v5, v4

    check-cast v5, Landroid/database/Cursor;

    if-eqz v5, :cond_3

    .line 268
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "ShortCutUtils"

    .line 271
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "extractLaunchDataArtist() match name, name="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", keyword="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 269
    invoke-static {v6, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    new-instance v3, Lcom/samsung/android/app/music/util/ShortCutUtils$LaunchData;

    .line 274
    sget-object v6, Lcom/samsung/android/app/music/util/ShortCutUtils;->a:Lcom/samsung/android/app/music/util/ShortCutUtils;

    invoke-direct {v6, v0}, Lcom/samsung/android/app/music/util/ShortCutUtils;->a(Landroid/content/Intent;)I

    move-result v6

    .line 276
    invoke-interface {v5, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v7, "c.getString(0)"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 277
    sget-object v7, Lcom/samsung/android/app/music/util/ShortCutUtils;->a:Lcom/samsung/android/app/music/util/ShortCutUtils;

    invoke-direct {v7, v0}, Lcom/samsung/android/app/music/util/ShortCutUtils;->d(Landroid/content/Intent;)I

    move-result v0

    .line 273
    invoke-direct {v3, v6, v2, v5, v0}, Lcom/samsung/android/app/music/util/ShortCutUtils$LaunchData;-><init>(ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {v4, v13}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v3

    .line 280
    :cond_3
    :try_start_5
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 267
    invoke-static {v4, v13}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    const-string v0, "ShortCutUtils"

    .line 282
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "extractLaunchDataArtist() match failed, name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", keyword="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v12

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v13, v0

    .line 267
    :try_start_6
    throw v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_0
    invoke-static {v4, v13}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v13, v0

    .line 247
    :try_start_7
    throw v13
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_1
    invoke-static {v5, v13}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v13, v0

    .line 230
    :try_start_8
    throw v13
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :goto_2
    invoke-static {v6, v13}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private final f(Landroid/content/Context;Landroid/content/Intent;)Lcom/samsung/android/app/music/util/ShortCutUtils$LaunchData;
    .locals 10

    .line 287
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/util/ShortCutUtils;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 288
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/util/ShortCutUtils;->c(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 290
    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$AlbumArtists;->a:Landroid/net/Uri;

    const-string v2, "_id"

    .line 291
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v4

    const-string v2, "uri"

    .line 293
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "artist=?"

    const/4 v2, 0x1

    .line 296
    new-array v6, v2, [Ljava/lang/String;

    const-string v2, "name"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v0, v6, v2

    const/4 v7, 0x0

    const/16 v8, 0x10

    const/4 v9, 0x0

    move-object v2, p1

    .line 292
    invoke-static/range {v2 .. v9}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Landroid/database/Cursor;

    move-result-object p1

    check-cast p1, Ljava/io/Closeable;

    const/4 v2, 0x0

    .line 297
    move-object v3, v2

    check-cast v3, Ljava/lang/Throwable;

    :try_start_0
    move-object v4, p1

    check-cast v4, Landroid/database/Cursor;

    if-eqz v4, :cond_0

    .line 298
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v2, "ShortCutUtils"

    .line 301
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "extractLaunchDataAlbumArtist() match name, name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", keyword="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 299
    invoke-static {v2, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    new-instance v2, Lcom/samsung/android/app/music/util/ShortCutUtils$LaunchData;

    .line 304
    sget-object v4, Lcom/samsung/android/app/music/util/ShortCutUtils;->a:Lcom/samsung/android/app/music/util/ShortCutUtils;

    invoke-direct {v4, p2}, Lcom/samsung/android/app/music/util/ShortCutUtils;->a(Landroid/content/Intent;)I

    move-result v4

    const-string v5, "keyword"

    .line 306
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 307
    sget-object v5, Lcom/samsung/android/app/music/util/ShortCutUtils;->a:Lcom/samsung/android/app/music/util/ShortCutUtils;

    invoke-direct {v5, p2}, Lcom/samsung/android/app/music/util/ShortCutUtils;->d(Landroid/content/Intent;)I

    move-result p2

    .line 303
    invoke-direct {v2, v4, v0, v1, p2}, Lcom/samsung/android/app/music/util/ShortCutUtils$LaunchData;-><init>(ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1, v3}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v2

    .line 310
    :cond_0
    :try_start_1
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 297
    invoke-static {p1, v3}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    const-string p1, "ShortCutUtils"

    .line 312
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "extractLaunchDataAlbumArtist() match failed, name="

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", keyword="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :catchall_0
    move-exception p2

    goto :goto_0

    :catch_0
    move-exception p2

    move-object v3, p2

    .line 297
    :try_start_2
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    invoke-static {p1, v3}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private final g(Landroid/content/Context;Landroid/content/Intent;)Lcom/samsung/android/app/music/util/ShortCutUtils$LaunchData;
    .locals 10

    .line 317
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/util/ShortCutUtils;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 318
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/util/ShortCutUtils;->c(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 320
    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Genres;->b:Landroid/net/Uri;

    const-string v2, "_id"

    .line 321
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v4

    const-string v2, "uri"

    .line 324
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "genre_name=?"

    const/4 v2, 0x1

    .line 327
    new-array v6, v2, [Ljava/lang/String;

    const-string v2, "keyword"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v6, v2

    const/4 v7, 0x0

    const/16 v8, 0x10

    const/4 v9, 0x0

    move-object v2, p1

    .line 323
    invoke-static/range {v2 .. v9}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Landroid/database/Cursor;

    move-result-object p1

    check-cast p1, Ljava/io/Closeable;

    const/4 v2, 0x0

    .line 328
    move-object v3, v2

    check-cast v3, Ljava/lang/Throwable;

    :try_start_0
    move-object v4, p1

    check-cast v4, Landroid/database/Cursor;

    if-eqz v4, :cond_0

    .line 329
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v2, "ShortCutUtils"

    .line 332
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "extractLaunchDataGenre() match name, name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", keyword="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/samsung/android/app/music/util/ShortCutUtils;->a:Lcom/samsung/android/app/music/util/ShortCutUtils;

    invoke-direct {v5, p2}, Lcom/samsung/android/app/music/util/ShortCutUtils;->c(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 330
    invoke-static {v2, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    new-instance v2, Lcom/samsung/android/app/music/util/ShortCutUtils$LaunchData;

    sget-object v4, Lcom/samsung/android/app/music/util/ShortCutUtils;->a:Lcom/samsung/android/app/music/util/ShortCutUtils;

    invoke-direct {v4, p2}, Lcom/samsung/android/app/music/util/ShortCutUtils;->a(Landroid/content/Intent;)I

    move-result v4

    const-string v5, "name"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lcom/samsung/android/app/music/util/ShortCutUtils;->a:Lcom/samsung/android/app/music/util/ShortCutUtils;

    invoke-direct {v5, p2}, Lcom/samsung/android/app/music/util/ShortCutUtils;->d(Landroid/content/Intent;)I

    move-result p2

    invoke-direct {v2, v4, v0, v1, p2}, Lcom/samsung/android/app/music/util/ShortCutUtils$LaunchData;-><init>(ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1, v3}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v2

    .line 336
    :cond_0
    :try_start_1
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 328
    invoke-static {p1, v3}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    const-string p1, "ShortCutUtils"

    .line 340
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "extractLaunchDataGenre() match failed, name="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", keyword="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/util/ShortCutUtils;->c(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 338
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :catchall_0
    move-exception p2

    goto :goto_0

    :catch_0
    move-exception p2

    move-object v3, p2

    .line 328
    :try_start_2
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    invoke-static {p1, v3}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private final h(Landroid/content/Context;Landroid/content/Intent;)Lcom/samsung/android/app/music/util/ShortCutUtils$LaunchData;
    .locals 10

    .line 346
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/util/ShortCutUtils;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 347
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/util/ShortCutUtils;->c(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 349
    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Folders;->a:Landroid/net/Uri;

    const-string v2, "_id"

    .line 350
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v4

    const-string v2, "uri"

    .line 353
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "bucket_id=?"

    const/4 v2, 0x1

    .line 356
    new-array v6, v2, [Ljava/lang/String;

    const-string v2, "keyword"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v6, v2

    const/4 v7, 0x0

    const/16 v8, 0x10

    const/4 v9, 0x0

    move-object v2, p1

    .line 352
    invoke-static/range {v2 .. v9}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Landroid/database/Cursor;

    move-result-object p1

    check-cast p1, Ljava/io/Closeable;

    const/4 v2, 0x0

    .line 357
    move-object v3, v2

    check-cast v3, Ljava/lang/Throwable;

    :try_start_0
    move-object v4, p1

    check-cast v4, Landroid/database/Cursor;

    if-eqz v4, :cond_0

    .line 358
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v2, "ShortCutUtils"

    .line 361
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "extractLaunchDataFolder() match bucketId, name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", keyword="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 359
    invoke-static {v2, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    new-instance v2, Lcom/samsung/android/app/music/util/ShortCutUtils$LaunchData;

    sget-object v4, Lcom/samsung/android/app/music/util/ShortCutUtils;->a:Lcom/samsung/android/app/music/util/ShortCutUtils;

    invoke-direct {v4, p2}, Lcom/samsung/android/app/music/util/ShortCutUtils;->a(Landroid/content/Intent;)I

    move-result v4

    const-string v5, "name"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lcom/samsung/android/app/music/util/ShortCutUtils;->a:Lcom/samsung/android/app/music/util/ShortCutUtils;

    invoke-direct {v5, p2}, Lcom/samsung/android/app/music/util/ShortCutUtils;->d(Landroid/content/Intent;)I

    move-result p2

    invoke-direct {v2, v4, v0, v1, p2}, Lcom/samsung/android/app/music/util/ShortCutUtils$LaunchData;-><init>(ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1, v3}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v2

    .line 365
    :cond_0
    :try_start_1
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 357
    invoke-static {p1, v3}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    const-string p1, "ShortCutUtils"

    .line 367
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "extractLaunchDataFolder() match failed, name="

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", keyword="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :catchall_0
    move-exception p2

    goto :goto_0

    :catch_0
    move-exception p2

    move-object v3, p2

    .line 357
    :try_start_2
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    invoke-static {p1, v3}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private final i(Landroid/content/Context;Landroid/content/Intent;)Lcom/samsung/android/app/music/util/ShortCutUtils$LaunchData;
    .locals 10

    .line 372
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/util/ShortCutUtils;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 373
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/util/ShortCutUtils;->c(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 375
    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Composers;->b:Landroid/net/Uri;

    const-string v2, "_id"

    .line 376
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v4

    const-string v2, "uri"

    .line 379
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "composer=?"

    const/4 v2, 0x1

    .line 382
    new-array v6, v2, [Ljava/lang/String;

    const-string v2, "keyword"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v6, v2

    const/4 v7, 0x0

    const/16 v8, 0x10

    const/4 v9, 0x0

    move-object v2, p1

    .line 378
    invoke-static/range {v2 .. v9}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Landroid/database/Cursor;

    move-result-object p1

    check-cast p1, Ljava/io/Closeable;

    const/4 v2, 0x0

    .line 383
    move-object v3, v2

    check-cast v3, Ljava/lang/Throwable;

    :try_start_0
    move-object v4, p1

    check-cast v4, Landroid/database/Cursor;

    if-eqz v4, :cond_0

    .line 384
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v2, "ShortCutUtils"

    .line 387
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "extractLaunchDataComposer() match composer, name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", keyword="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 385
    invoke-static {v2, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    new-instance v2, Lcom/samsung/android/app/music/util/ShortCutUtils$LaunchData;

    sget-object v4, Lcom/samsung/android/app/music/util/ShortCutUtils;->a:Lcom/samsung/android/app/music/util/ShortCutUtils;

    invoke-direct {v4, p2}, Lcom/samsung/android/app/music/util/ShortCutUtils;->a(Landroid/content/Intent;)I

    move-result v4

    const-string v5, "name"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lcom/samsung/android/app/music/util/ShortCutUtils;->a:Lcom/samsung/android/app/music/util/ShortCutUtils;

    invoke-direct {v5, p2}, Lcom/samsung/android/app/music/util/ShortCutUtils;->d(Landroid/content/Intent;)I

    move-result p2

    invoke-direct {v2, v4, v0, v1, p2}, Lcom/samsung/android/app/music/util/ShortCutUtils$LaunchData;-><init>(ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1, v3}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v2

    .line 391
    :cond_0
    :try_start_1
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 383
    invoke-static {p1, v3}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    const-string p1, "ShortCutUtils"

    .line 393
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "extractLaunchDataComposer() match failed, name="

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", keyword="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :catchall_0
    move-exception p2

    goto :goto_0

    :catch_0
    move-exception p2

    move-object v3, p2

    .line 383
    :try_start_2
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    invoke-static {p1, v3}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
.end method
