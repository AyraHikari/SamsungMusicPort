.class Lcom/samsung/android/app/musiclibrary/core/player/common/m2tv/M2TvConnectionDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/player/common/m2tv/M2TvConnectionDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/player/common/m2tv/M2TvConnectionDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/player/common/m2tv/M2TvConnectionDialog;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/m2tv/M2TvConnectionDialog$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/player/common/m2tv/M2TvConnectionDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 72
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/m2tv/M2TvConnectionDialog$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/player/common/m2tv/M2TvConnectionDialog;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/player/common/m2tv/M2TvConnectionDialog;->dismiss()V

    return-void
.end method
