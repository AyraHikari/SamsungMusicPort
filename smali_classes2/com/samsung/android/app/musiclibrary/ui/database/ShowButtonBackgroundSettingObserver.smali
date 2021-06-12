.class public Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver$OnSettingValueChangeListener;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/ContentResolver;

.field private b:Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver$OnSettingValueChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 1

    .line 17
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 18
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver;->a:Landroid/content/ContentResolver;

    return-void
.end method

.method private a()V
    .locals 3

    .line 31
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver;->a:Landroid/content/ContentResolver;

    const-string v1, "show_button_background"

    .line 32
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 34
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver;->a:Landroid/content/ContentResolver;

    const-string v1, "show_button_background"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver;->onChange(Z)V

    return-void
.end method

.method private b()V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver;->a:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver$OnSettingValueChangeListener;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver;->b:Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver$OnSettingValueChangeListener;

    .line 23
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver;->b:Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver$OnSettingValueChangeListener;

    if-eqz p1, :cond_0

    .line 24
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver;->a()V

    goto :goto_0

    .line 26
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver;->b()V

    :goto_0
    return-void
.end method

.method public onChange(Z)V
    .locals 1

    .line 43
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 44
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver;->b:Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver$OnSettingValueChangeListener;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver;->b:Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver$OnSettingValueChangeListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver$OnSettingValueChangeListener;->a(Z)V

    :cond_0
    return-void
.end method
