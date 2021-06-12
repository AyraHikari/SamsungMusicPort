.class public Lcom/samsung/android/app/musiclibrary/ui/util/LocaleChangedBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 14
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->d()V

    .line 15
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->a()V

    return-void
.end method
