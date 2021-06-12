.class public final Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver$OnSettingChangeListener;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "NavigationSettingObserver"

.field private static final b:Landroid/net/Uri;

.field private static final c:Landroid/net/Uri;


# instance fields
.field private final d:Landroid/content/ContentResolver;

.field private e:Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver$OnSettingChangeListener;

.field private f:Z

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    sget-object v0, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "navigationbar_hide_bar"

    .line 33
    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getUriFor(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver;->b:Landroid/net/Uri;

    .line 35
    sget-object v0, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "navigationbar_hide_bar_enabled"

    .line 36
    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getUriFor(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver;->c:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 47
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver;->d:Landroid/content/ContentResolver;

    return-void
.end method

.method private c()V
    .locals 3

    .line 78
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver;->a:Ljava/lang/String;

    const-string v1, "startObserving"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver;->d:Landroid/content/ContentResolver;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver;->b:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 80
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver;->d:Landroid/content/ContentResolver;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver;->c:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 81
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method private d()Z
    .locals 4

    .line 85
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver;->d:Landroid/content/ContentResolver;

    const-string v1, "navigationbar_hide_bar"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 87
    :goto_0
    iget-boolean v3, p0, Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver;->f:Z

    if-eq v3, v0, :cond_1

    .line 88
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver;->f:Z

    return v2

    :cond_1
    return v1
.end method

.method private e()Z
    .locals 4

    .line 95
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver;->d:Landroid/content/ContentResolver;

    const-string v1, "navigationbar_hide_bar_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 97
    :goto_0
    iget-boolean v3, p0, Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver;->g:Z

    if-eq v3, v0, :cond_1

    .line 98
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver;->g:Z

    return v1

    :cond_1
    return v2
.end method

.method private f()V
    .locals 2

    .line 105
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver;->a:Ljava/lang/String;

    const-string v1, "stopObserving"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver;->d:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver$OnSettingChangeListener;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver;->e:Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver$OnSettingChangeListener;

    .line 70
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver;->e:Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver$OnSettingChangeListener;

    if-eqz p1, :cond_0

    .line 71
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver;->c()V

    goto :goto_0

    .line 73
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver;->f()V

    :goto_0
    return-void
.end method

.method public a()Z
    .locals 1

    .line 110
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver;->f:Z

    return v0
.end method

.method public b()Z
    .locals 1

    .line 114
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver;->g:Z

    return v0
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    .line 53
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    if-eqz p1, :cond_0

    .line 56
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver;->d()Z

    .line 57
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver;->e()Z

    goto :goto_0

    .line 58
    :cond_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver;->b:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver;->d()Z

    move-result p2

    goto :goto_1

    .line 60
    :cond_1
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver;->c:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 61
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver;->e()Z

    move-result p2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p2, 0x0

    .line 63
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver;->e:Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver$OnSettingChangeListener;

    if-eqz v0, :cond_4

    if-nez p2, :cond_3

    if-eqz p1, :cond_4

    .line 64
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver;->e:Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver$OnSettingChangeListener;

    iget-boolean p2, p0, Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver;->f:Z

    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver;->g:Z

    invoke-interface {p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver$OnSettingChangeListener;->a(ZZ)V

    :cond_4
    return-void
.end method
