.class final Lcom/samsung/android/app/music/milk/event/EventPopupDialog$onCreateDialog$$inlined$let$lambda$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/event/EventPopupDialog$onCreateDialog$$inlined$let$lambda$2;->a:Lcom/samsung/android/app/music/milk/event/EventPopupDialog;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/event/EventPopupDialog$onCreateDialog$$inlined$let$lambda$2;->b:Landroid/app/Dialog;

    iput-object p3, p0, Lcom/samsung/android/app/music/milk/event/EventPopupDialog$onCreateDialog$$inlined$let$lambda$2;->c:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    const-string p1, "EventPopupDialog"

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCheckedChanged : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/event/EventPopupDialog$onCreateDialog$$inlined$let$lambda$2;->a:Lcom/samsung/android/app/music/milk/event/EventPopupDialog;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/event/EventPopupDialog;->a(Lcom/samsung/android/app/music/milk/event/EventPopupDialog;Z)V

    return-void
.end method
