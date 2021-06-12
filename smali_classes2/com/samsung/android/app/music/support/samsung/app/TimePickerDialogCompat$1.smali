.class Lcom/samsung/android/app/music/support/samsung/app/TimePickerDialogCompat$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/app/TimePickerDialogSdlCompat$OnTimePickerDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/support/samsung/app/TimePickerDialogCompat;-><init>(Landroid/content/Context;IIZLcom/samsung/android/app/music/support/samsung/app/TimePickerDialogCompat$OnTimePickerDialogListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/support/samsung/app/TimePickerDialogCompat;

.field final synthetic val$listener:Lcom/samsung/android/app/music/support/samsung/app/TimePickerDialogCompat$OnTimePickerDialogListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/support/samsung/app/TimePickerDialogCompat;Lcom/samsung/android/app/music/support/samsung/app/TimePickerDialogCompat$OnTimePickerDialogListener;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/samsung/android/app/music/support/samsung/app/TimePickerDialogCompat$1;->this$0:Lcom/samsung/android/app/music/support/samsung/app/TimePickerDialogCompat;

    iput-object p2, p0, Lcom/samsung/android/app/music/support/samsung/app/TimePickerDialogCompat$1;->val$listener:Lcom/samsung/android/app/music/support/samsung/app/TimePickerDialogCompat$OnTimePickerDialogListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/samsung/android/app/music/support/samsung/app/TimePickerDialogCompat$1;->val$listener:Lcom/samsung/android/app/music/support/samsung/app/TimePickerDialogCompat$OnTimePickerDialogListener;

    invoke-interface {v0}, Lcom/samsung/android/app/music/support/samsung/app/TimePickerDialogCompat$OnTimePickerDialogListener;->onCancel()V

    return-void
.end method

.method public onTimeSet(Landroid/view/View;II)V
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/samsung/android/app/music/support/samsung/app/TimePickerDialogCompat$1;->val$listener:Lcom/samsung/android/app/music/support/samsung/app/TimePickerDialogCompat$OnTimePickerDialogListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/app/music/support/samsung/app/TimePickerDialogCompat$OnTimePickerDialogListener;->onTimeSet(Landroid/view/View;II)V

    return-void
.end method
