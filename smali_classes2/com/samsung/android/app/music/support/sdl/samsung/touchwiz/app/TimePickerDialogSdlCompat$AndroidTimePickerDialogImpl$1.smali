.class Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/app/TimePickerDialogSdlCompat$AndroidTimePickerDialogImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/app/TimePickerDialogSdlCompat$AndroidTimePickerDialogImpl;-><init>(Landroid/content/Context;IIZLcom/samsung/android/app/music/support/sdl/samsung/touchwiz/app/TimePickerDialogSdlCompat$OnTimePickerDialogListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/app/TimePickerDialogSdlCompat$OnTimePickerDialogListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/app/TimePickerDialogSdlCompat$OnTimePickerDialogListener;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/app/TimePickerDialogSdlCompat$AndroidTimePickerDialogImpl$1;->val$listener:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/app/TimePickerDialogSdlCompat$OnTimePickerDialogListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/app/TimePickerDialogSdlCompat$AndroidTimePickerDialogImpl$1;->val$listener:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/app/TimePickerDialogSdlCompat$OnTimePickerDialogListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/app/TimePickerDialogSdlCompat$OnTimePickerDialogListener;->onTimeSet(Landroid/view/View;II)V

    return-void
.end method
