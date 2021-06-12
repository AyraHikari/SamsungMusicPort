.class Lcom/samsung/android/app/music/dialog/BanCountExceedDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/dialog/BanCountExceedDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/dialog/BanCountExceedDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/dialog/BanCountExceedDialog;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/samsung/android/app/music/dialog/BanCountExceedDialog$2;->a:Lcom/samsung/android/app/music/dialog/BanCountExceedDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 37
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
