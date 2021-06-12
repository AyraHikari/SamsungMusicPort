.class Lcom/samsung/android/app/music/main/MilkTask$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/main/MilkTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/main/MilkTask;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/main/MilkTask;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/samsung/android/app/music/main/MilkTask$3;->a:Lcom/samsung/android/app/music/main/MilkTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string p2, "my_music_mode_option"

    .line 263
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 264
    iget-object p1, p0, Lcom/samsung/android/app/music/main/MilkTask$3;->a:Lcom/samsung/android/app/music/main/MilkTask;

    invoke-static {p1}, Lcom/samsung/android/app/music/main/MilkTask;->a(Lcom/samsung/android/app/music/main/MilkTask;)Lcom/samsung/android/app/music/main/MainActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/main/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 265
    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->e()Z

    move-result p2

    .line 264
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/fcm/smp/SmpManager;->b(Landroid/content/Context;Z)V

    :cond_0
    return-void
.end method
