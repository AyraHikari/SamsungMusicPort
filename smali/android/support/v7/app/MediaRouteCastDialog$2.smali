.class Landroid/support/v7/app/MediaRouteCastDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/app/MediaRouteCastDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/MediaRouteCastDialog;


# direct methods
.method constructor <init>(Landroid/support/v7/app/MediaRouteCastDialog;)V
    .locals 0

    .line 266
    iput-object p1, p0, Landroid/support/v7/app/MediaRouteCastDialog$2;->this$0:Landroid/support/v7/app/MediaRouteCastDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 269
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteCastDialog$2;->this$0:Landroid/support/v7/app/MediaRouteCastDialog;

    invoke-virtual {p1}, Landroid/support/v7/app/MediaRouteCastDialog;->dismiss()V

    return-void
.end method
