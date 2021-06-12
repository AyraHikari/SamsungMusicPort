.class Lcom/samsung/android/app/music/main/MilkTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/PermissionManager$OnPermissionResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/main/MilkTask;->a(Lcom/samsung/android/app/music/main/MainActivity;Landroid/os/Bundle;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/main/MainActivity;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/samsung/android/app/music/main/MilkTask;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/main/MilkTask;Lcom/samsung/android/app/music/main/MainActivity;Landroid/content/Context;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/samsung/android/app/music/main/MilkTask$1;->c:Lcom/samsung/android/app/music/main/MilkTask;

    iput-object p2, p0, Lcom/samsung/android/app/music/main/MilkTask$1;->a:Lcom/samsung/android/app/music/main/MainActivity;

    iput-object p3, p0, Lcom/samsung/android/app/music/main/MilkTask$1;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionResult([Ljava/lang/String;[I)V
    .locals 0

    .line 123
    iget-object p1, p0, Lcom/samsung/android/app/music/main/MilkTask$1;->a:Lcom/samsung/android/app/music/main/MainActivity;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/main/MainActivity;->getPermissionManager()Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 124
    iget-object p1, p0, Lcom/samsung/android/app/music/main/MilkTask$1;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/music/fcm/FcmController;->b(Landroid/content/Context;)V

    .line 125
    iget-object p1, p0, Lcom/samsung/android/app/music/main/MilkTask$1;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/music/fcm/smp/SmpManager;->a(Landroid/content/Context;)V

    .line 126
    iget-object p1, p0, Lcom/samsung/android/app/music/main/MilkTask$1;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->j()V

    :cond_0
    return-void
.end method
