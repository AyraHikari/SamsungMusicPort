.class Lcom/samsung/android/app/music/support/samsung/app/TimePickerDialogCompat$SemTimePickerDialogImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/SemTimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/support/samsung/app/TimePickerDialogCompat$SemTimePickerDialogImpl;-><init>(Landroid/content/Context;IIZLcom/samsung/android/app/music/support/samsung/app/TimePickerDialogCompat$OnTimePickerDialogListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/samsung/android/app/music/support/samsung/app/TimePickerDialogCompat$OnTimePickerDialogListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/support/samsung/app/TimePickerDialogCompat$OnTimePickerDialogListener;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/samsung/android/app/music/support/samsung/app/TimePickerDialogCompat$SemTimePickerDialogImpl$1;->val$listener:Lcom/samsung/android/app/music/support/samsung/app/TimePickerDialogCompat$OnTimePickerDialogListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Lcom/samsung/android/widget/SemTimePicker;II)V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/samsung/android/app/music/support/samsung/app/TimePickerDialogCompat$SemTimePickerDialogImpl$1;->val$listener:Lcom/samsung/android/app/music/support/samsung/app/TimePickerDialogCompat$OnTimePickerDialogListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/app/music/support/samsung/app/TimePickerDialogCompat$OnTimePickerDialogListener;->onTimeSet(Landroid/view/View;II)V

    return-void
.end method
