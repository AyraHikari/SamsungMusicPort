.class public final Lcom/samsung/android/app/music/util/UiUtils;
.super Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;
.source "SourceFile"


# static fields
.field private static final f:Ljava/lang/String; = "UiUtils"

.field private static final g:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    .line 77
    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/samsung/android/app/music/util/UiUtils;->g:[Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;I)F
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 486
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 487
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 488
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result p0

    return p0
.end method

.method public static a(I)Landroid/content/res/ColorStateList;
    .locals 4

    const/4 v0, 0x1

    .line 238
    new-array v1, v0, [[I

    const/4 v2, 0x0

    new-array v3, v2, [I

    aput-object v3, v1, v2

    .line 239
    new-array v0, v0, [I

    aput p0, v0, v2

    .line 240
    new-instance p0, Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object p0
.end method

.method public static a(Landroid/content/Context;II)Ljava/lang/String;
    .locals 2

    const v0, 0x7f0b0506

    .line 175
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 176
    sget-object v0, Lcom/samsung/android/app/music/util/UiUtils;->a:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 178
    sget-object v0, Lcom/samsung/android/app/music/util/UiUtils;->g:[Ljava/lang/Object;

    .line 179
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    .line 180
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    .line 182
    sget-object p1, Lcom/samsung/android/app/music/util/UiUtils;->b:Ljava/util/Formatter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    invoke-virtual {p1, p2, p0, v0}, Ljava/util/Formatter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "/"

    .line 89
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 90
    array-length v1, v0

    if-lez v1, :cond_1

    .line 91
    array-length p0, v0

    add-int/lit8 p0, p0, -0x1

    aget-object p0, v0, p0

    return-object p0

    :cond_1
    return-object p0
.end method

.method public static a(Landroid/support/v7/view/ActionMode;I)V
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    if-eqz p0, :cond_3

    .line 501
    invoke-virtual {p0}, Landroid/support/v7/view/ActionMode;->getCustomView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 505
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/view/ActionMode;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1303b1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 507
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 510
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/view/ActionMode;->getCustomView()Landroid/view/View;

    move-result-object p0

    const v0, 0x7f1303b0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p0, :cond_2

    .line 512
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    const-string p0, "Utils"

    const-string p1, "setActionModeTextColor. mode is null."

    .line 502
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/view/View;ZJLandroid/view/animation/Interpolator;)V
    .locals 7

    if-nez p0, :cond_0

    return-void

    .line 521
    :cond_0
    new-instance v6, Lcom/samsung/android/app/music/util/UiUtils$2;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/util/UiUtils$2;-><init>(Landroid/view/View;ZJLandroid/view/animation/Interpolator;)V

    invoke-virtual {p0, v6}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(Lcom/samsung/android/app/musiclibrary/ui/AppBar;I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    if-eqz p0, :cond_1

    .line 492
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->a()Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 493
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->a()Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 497
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->a()Landroid/support/v7/widget/Toolbar;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    return-void

    :cond_1
    :goto_0
    const-string p0, "Utils"

    const-string p1, "setNavigationIconTint. appBar is null."

    .line 494
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a()Z
    .locals 2

    .line 158
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static a(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x18

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0xa8

    if-ne p0, v1, :cond_1

    .line 285
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result p0

    const/16 p1, 0x221

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static a(Landroid/app/Activity;)Z
    .locals 2

    .line 349
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "keyguard"

    .line 153
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/KeyguardManager;

    if-eqz p0, :cond_0

    .line 154
    invoke-virtual {p0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static a(Landroid/view/View;FF)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x2

    .line 312
    new-array v1, v1, [I

    .line 313
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 314
    aget v2, v1, v0

    int-to-float v2, v2

    const/4 v3, 0x1

    cmpl-float v2, p1, v2

    if-lez v2, :cond_1

    aget v2, v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v2, v4

    int-to-float v2, v2

    cmpg-float p1, p1, v2

    if-gez p1, :cond_1

    aget p1, v1, v3

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-lez p1, :cond_1

    aget p1, v1, v3

    .line 315
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int/2addr p1, p0

    int-to-float p0, p1

    cmpg-float p0, p2, p0

    if-gez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static a(Landroid/widget/TextView;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 229
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingStart()I

    move-result v2

    sub-int/2addr v1, v2

    .line 230
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingEnd()I

    move-result v2

    sub-int/2addr v1, v2

    .line 232
    invoke-virtual {p0}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    if-lez v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v2

    if-ne v2, v3, :cond_2

    .line 233
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v2

    int-to-float v1, v1

    cmpl-float v1, v2, v1

    if-gtz v1, :cond_1

    .line 234
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result p0

    if-lez p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static b(Landroid/app/Activity;)I
    .locals 4

    .line 363
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 364
    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x10102eb

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 365
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 366
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 367
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public static b()Z
    .locals 2

    .line 547
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static b(I)Z
    .locals 1

    const/16 v0, 0x5b

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa4

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static b(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x19

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0xa9

    if-ne p0, v1, :cond_1

    .line 296
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result p0

    const/16 p1, 0x222

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "power"

    .line 170
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    if-eqz p0, :cond_0

    .line 171
    invoke-virtual {p0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 1

    const-string v0, ".*[\u3131-\u314e\u314f-\u3163\uac00-\ud7a3]+.*"

    .line 463
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 464
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 466
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "Utils"

    const-string v0, "isHangul : return true"

    .line 467
    invoke-static {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string p0, "Utils"

    const-string v0, "isHangul : return false"

    .line 470
    invoke-static {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static c(Landroid/app/Activity;)Landroid/view/View;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 391
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 392
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v1, "action_bar_container"

    const-string v2, "id"

    const-string v3, "android"

    invoke-virtual {p0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 393
    invoke-virtual {v0, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "activity"

    .line 319
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 320
    invoke-virtual {p0}, Landroid/app/ActivityManager;->isInLockTaskMode()Z

    move-result p0

    return p0
.end method

.method public static d(Landroid/app/Activity;)Z
    .locals 1

    .line 410
    invoke-static {p0}, Lcom/samsung/android/app/music/util/UiUtils;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/app/music/util/UiUtils;->h(Landroid/app/Activity;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static d(Landroid/content/Context;)Z
    .locals 0

    .line 324
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/music/support/android/content/res/ConfigurationCompat;->hasMobileKeyboard(Landroid/content/res/Configuration;)Z

    move-result p0

    return p0
.end method

.method public static e(Landroid/app/Activity;)I
    .locals 0

    .line 414
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    return p0
.end method

.method public static e(Landroid/content/Context;)Z
    .locals 2

    .line 337
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/app/music/support/android/provider/SettingsCompat$System;->ULTRA_POWERSAVING_MODE:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static f(Landroid/app/Activity;)I
    .locals 3

    .line 418
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "status_bar_height"

    const-string v1, "dimen"

    const-string v2, "android"

    .line 419
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 421
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
