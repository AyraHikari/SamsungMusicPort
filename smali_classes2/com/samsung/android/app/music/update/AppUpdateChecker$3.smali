.class Lcom/samsung/android/app/music/update/AppUpdateChecker$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/update/AppUpdateChecker;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/samsung/android/app/music/update/AppUpdateChecker;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/update/AppUpdateChecker;Z)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/samsung/android/app/music/update/AppUpdateChecker$3;->b:Lcom/samsung/android/app/music/update/AppUpdateChecker;

    iput-boolean p2, p0, Lcom/samsung/android/app/music/update/AppUpdateChecker$3;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 168
    iget-object p1, p0, Lcom/samsung/android/app/music/update/AppUpdateChecker$3;->b:Lcom/samsung/android/app/music/update/AppUpdateChecker;

    invoke-static {p1}, Lcom/samsung/android/app/music/update/AppUpdateChecker;->b(Lcom/samsung/android/app/music/update/AppUpdateChecker;)V

    .line 169
    iget-boolean p1, p0, Lcom/samsung/android/app/music/update/AppUpdateChecker$3;->a:Z

    if-eqz p1, :cond_0

    .line 170
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->exit()V

    :cond_0
    return-void
.end method
