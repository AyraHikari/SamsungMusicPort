.class Lcom/samsung/android/app/music/ActivityLauncher$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$OnExtractListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/ActivityLauncher;->a(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/ActivityLauncher;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/ActivityLauncher;)V
    .locals 0

    .line 370
    iput-object p1, p0, Lcom/samsung/android/app/music/ActivityLauncher$1;->a:Lcom/samsung/android/app/music/ActivityLauncher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)V
    .locals 1
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    .line 374
    const-class p1, Lcom/samsung/android/app/music/ActivityLauncher;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onExtractFinished() - null intent."

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/ActivityLauncher$1;->a:Lcom/samsung/android/app/music/ActivityLauncher;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/ActivityLauncher;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
