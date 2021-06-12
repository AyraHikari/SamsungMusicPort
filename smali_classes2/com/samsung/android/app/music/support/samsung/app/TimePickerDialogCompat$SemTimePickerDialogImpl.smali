.class Lcom/samsung/android/app/music/support/samsung/app/TimePickerDialogCompat$SemTimePickerDialogImpl;
.super Lcom/samsung/android/app/SemTimePickerDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/support/samsung/app/TimePickerDialogCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SemTimePickerDialogImpl"
.end annotation


# instance fields
.field private final mListener:Lcom/samsung/android/app/music/support/samsung/app/TimePickerDialogCompat$OnTimePickerDialogListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;IIZLcom/samsung/android/app/music/support/samsung/app/TimePickerDialogCompat$OnTimePickerDialogListener;)V
    .locals 6

    .line 46
    new-instance v2, Lcom/samsung/android/app/music/support/samsung/app/TimePickerDialogCompat$SemTimePickerDialogImpl$1;

    invoke-direct {v2, p5}, Lcom/samsung/android/app/music/support/samsung/app/TimePickerDialogCompat$SemTimePickerDialogImpl$1;-><init>(Lcom/samsung/android/app/music/support/samsung/app/TimePickerDialogCompat$OnTimePickerDialogListener;)V

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/SemTimePickerDialog;-><init>(Landroid/content/Context;Lcom/samsung/android/app/SemTimePickerDialog$OnTimeSetListener;IIZ)V

    .line 52
    iput-object p5, p0, Lcom/samsung/android/app/music/support/samsung/app/TimePickerDialogCompat$SemTimePickerDialogImpl;->mListener:Lcom/samsung/android/app/music/support/samsung/app/TimePickerDialogCompat$OnTimePickerDialogListener;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 62
    invoke-super {p0}, Lcom/samsung/android/app/SemTimePickerDialog;->cancel()V

    .line 63
    iget-object v0, p0, Lcom/samsung/android/app/music/support/samsung/app/TimePickerDialogCompat$SemTimePickerDialogImpl;->mListener:Lcom/samsung/android/app/music/support/samsung/app/TimePickerDialogCompat$OnTimePickerDialogListener;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/samsung/android/app/music/support/samsung/app/TimePickerDialogCompat$SemTimePickerDialogImpl;->mListener:Lcom/samsung/android/app/music/support/samsung/app/TimePickerDialogCompat$OnTimePickerDialogListener;

    invoke-interface {v0}, Lcom/samsung/android/app/music/support/samsung/app/TimePickerDialogCompat$OnTimePickerDialogListener;->onCancel()V

    :cond_0
    return-void
.end method

.method public onTimeChanged(Lcom/samsung/android/widget/SemTimePicker;II)V
    .locals 0

    return-void
.end method
