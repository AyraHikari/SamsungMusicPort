.class Landroid/support/v7/app/MediaRouteDevicePickerDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/app/MediaRouteDevicePickerDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/MediaRouteDevicePickerDialog;


# direct methods
.method constructor <init>(Landroid/support/v7/app/MediaRouteDevicePickerDialog;)V
    .locals 0

    .line 184
    iput-object p1, p0, Landroid/support/v7/app/MediaRouteDevicePickerDialog$2;->this$0:Landroid/support/v7/app/MediaRouteDevicePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 187
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteDevicePickerDialog$2;->this$0:Landroid/support/v7/app/MediaRouteDevicePickerDialog;

    invoke-virtual {p1}, Landroid/support/v7/app/MediaRouteDevicePickerDialog;->dismiss()V

    return-void
.end method
