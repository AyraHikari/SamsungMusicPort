.class final Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$themeModeChangeObservers$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$themeModeChangeObservers$1;->a:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string p2, "key_theme"

    .line 145
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 146
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$themeModeChangeObservers$1$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$themeModeChangeObservers$1$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$themeModeChangeObservers$1;)V

    check-cast p2, Ljava/lang/Runnable;

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
