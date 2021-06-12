.class final Lcom/samsung/android/app/music/milk/event/EventPopupDialog$onCreateDialog$$inlined$let$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/event/EventPopupDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/event/EventPopupDialog;

.field final synthetic b:Landroid/app/Dialog;

.field final synthetic c:Landroid/support/v4/app/FragmentActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/event/EventPopupDialog;Landroid/app/Dialog;Landroid/support/v4/app/FragmentActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/event/EventPopupDialog$onCreateDialog$$inlined$let$lambda$1;->a:Lcom/samsung/android/app/music/milk/event/EventPopupDialog;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/event/EventPopupDialog$onCreateDialog$$inlined$let$lambda$1;->b:Landroid/app/Dialog;

    iput-object p3, p0, Lcom/samsung/android/app/music/milk/event/EventPopupDialog$onCreateDialog$$inlined$let$lambda$1;->c:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 83
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/event/EventPopupDialog$onCreateDialog$$inlined$let$lambda$1;->a:Lcom/samsung/android/app/music/milk/event/EventPopupDialog;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/event/EventPopupDialog;->dismiss()V

    return-void
.end method
