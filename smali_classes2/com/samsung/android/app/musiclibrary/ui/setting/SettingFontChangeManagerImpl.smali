.class public Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl;
.super Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacksAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl$OnLargerFontChangeObservers;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/content/ContentResolver;

.field private final c:Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl$OnLargerFontChangeObservers;

.field private final d:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 48
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacksAdapter;-><init>()V

    .line 45
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl$OnLargerFontChangeObservers;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl$OnLargerFontChangeObservers;-><init>(Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl;->c:Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl$OnLargerFontChangeObservers;

    .line 66
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl;->d:Landroid/content/BroadcastReceiver;

    .line 49
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl;->a:Landroid/content/Context;

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl;->b:Landroid/content/ContentResolver;

    return-void
.end method

.method private a(Landroid/content/ContentResolver;)I
    .locals 5

    const-string v0, "accessiblity_font_switch"

    const/4 v1, 0x0

    .line 79
    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v2, "Settings"

    .line 80
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " isLargerFontEnabled() - fontSwitch: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    const/4 v0, -0x1

    if-nez v1, :cond_1

    return v0

    .line 85
    :cond_1
    sget-object v1, Lcom/samsung/android/app/music/support/android/provider/SettingsCompat$Global;->FONT_SIZE:Ljava/lang/String;

    .line 86
    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const-string v1, "Settings"

    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " getLargerFontResId() - font level: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 101
    :pswitch_0
    sget v0, Lcom/samsung/android/app/musiclibrary/R$dimen;->mu_list_item_text1_larger_size_11:I

    goto :goto_0

    .line 98
    :pswitch_1
    sget v0, Lcom/samsung/android/app/musiclibrary/R$dimen;->mu_list_item_text1_larger_size_10:I

    goto :goto_0

    .line 95
    :pswitch_2
    sget v0, Lcom/samsung/android/app/musiclibrary/R$dimen;->mu_list_item_text1_larger_size_9:I

    goto :goto_0

    .line 92
    :pswitch_3
    sget v0, Lcom/samsung/android/app/musiclibrary/R$dimen;->mu_list_item_text1_larger_size_8:I

    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl;Landroid/content/ContentResolver;)I
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl;->a(Landroid/content/ContentResolver;)I

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl;)Landroid/content/ContentResolver;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl;->b:Landroid/content/ContentResolver;

    return-object p0
.end method

.method static synthetic b(Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl;)Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl$OnLargerFontChangeObservers;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl;->c:Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl$OnLargerFontChangeObservers;

    return-object p0
.end method


# virtual methods
.method public addOnLargerFontChangeListener(Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager$OnLargerFontChangeListener;)V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl;->c:Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl$OnLargerFontChangeObservers;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl$OnLargerFontChangeObservers;->a(Ljava/lang/Object;)V

    .line 112
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl;->c:Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl$OnLargerFontChangeObservers;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl;->b:Landroid/content/ContentResolver;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl;->a(Landroid/content/ContentResolver;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl$OnLargerFontChangeObservers;->a(I)V

    return-void
.end method

.method public onActivityStarted(Landroid/support/v4/app/FragmentActivity;)V
    .locals 3

    .line 55
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacksAdapter;->onActivityStarted(Landroid/support/v4/app/FragmentActivity;)V

    .line 56
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl;->d:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.samsung.settings.FONT_SIZE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onActivityStopped(Landroid/support/v4/app/FragmentActivity;)V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 63
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacksAdapter;->onActivityStopped(Landroid/support/v4/app/FragmentActivity;)V

    return-void
.end method

.method public removeOnLargerFontChangeListener(Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager$OnLargerFontChangeListener;)V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl;->c:Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl$OnLargerFontChangeObservers;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl$OnLargerFontChangeObservers;->b(Ljava/lang/Object;)V

    return-void
.end method
