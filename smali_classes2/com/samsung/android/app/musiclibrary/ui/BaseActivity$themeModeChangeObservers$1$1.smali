.class final Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$themeModeChangeObservers$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$themeModeChangeObservers$1;->onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$themeModeChangeObservers$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$themeModeChangeObservers$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$themeModeChangeObservers$1$1;->a:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$themeModeChangeObservers$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 147
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/ThemeManager;->a:Lcom/samsung/android/app/musiclibrary/ui/ThemeManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/ThemeManager;->a()V

    .line 148
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$themeModeChangeObservers$1$1;->a:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$themeModeChangeObservers$1;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$themeModeChangeObservers$1;->a:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->recreate()V

    return-void
.end method
