.class Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$4;->a:Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 279
    iget-object p1, p0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$4;->a:Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->a(Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;Z)Z

    return-void
.end method
