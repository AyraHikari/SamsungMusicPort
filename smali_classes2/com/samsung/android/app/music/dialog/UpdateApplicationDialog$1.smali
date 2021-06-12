.class Lcom/samsung/android/app/music/dialog/UpdateApplicationDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/dialog/UpdateApplicationDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/dialog/UpdateApplicationDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/dialog/UpdateApplicationDialog;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/samsung/android/app/music/dialog/UpdateApplicationDialog$1;->a:Lcom/samsung/android/app/music/dialog/UpdateApplicationDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 47
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f13020a

    if-eq p1, v0, :cond_1

    const v0, 0x7f13020d

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/dialog/UpdateApplicationDialog$1;->a:Lcom/samsung/android/app/music/dialog/UpdateApplicationDialog;

    const-string v0, "com.sec.android.app.music"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/music/dialog/UpdateApplicationDialog;->a(Lcom/samsung/android/app/music/dialog/UpdateApplicationDialog;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/dialog/UpdateApplicationDialog$1;->a:Lcom/samsung/android/app/music/dialog/UpdateApplicationDialog;

    invoke-static {p1}, Lcom/samsung/android/app/music/dialog/UpdateApplicationDialog;->a(Lcom/samsung/android/app/music/dialog/UpdateApplicationDialog;)V

    .line 57
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/music/dialog/UpdateApplicationDialog$1;->a:Lcom/samsung/android/app/music/dialog/UpdateApplicationDialog;

    invoke-static {p1}, Lcom/samsung/android/app/music/dialog/UpdateApplicationDialog;->b(Lcom/samsung/android/app/music/dialog/UpdateApplicationDialog;)V

    return-void
.end method
