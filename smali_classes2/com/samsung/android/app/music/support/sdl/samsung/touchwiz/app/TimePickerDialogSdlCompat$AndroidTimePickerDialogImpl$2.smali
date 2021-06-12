.class Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/app/TimePickerDialogSdlCompat$AndroidTimePickerDialogImpl$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/app/TimePickerDialogSdlCompat$AndroidTimePickerDialogImpl;-><init>(Landroid/content/Context;IIZLcom/samsung/android/app/music/support/sdl/samsung/touchwiz/app/TimePickerDialogSdlCompat$OnTimePickerDialogListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/app/TimePickerDialogSdlCompat$AndroidTimePickerDialogImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/app/TimePickerDialogSdlCompat$AndroidTimePickerDialogImpl;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/app/TimePickerDialogSdlCompat$AndroidTimePickerDialogImpl$2;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/app/TimePickerDialogSdlCompat$AndroidTimePickerDialogImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 1

    .line 96
    iget-object p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/app/TimePickerDialogSdlCompat$AndroidTimePickerDialogImpl$2;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/app/TimePickerDialogSdlCompat$AndroidTimePickerDialogImpl;

    const/4 v0, -0x2

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/app/TimePickerDialogSdlCompat$AndroidTimePickerDialogImpl;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/app/TimePickerDialogSdlCompat$AndroidTimePickerDialogImpl$2$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/app/TimePickerDialogSdlCompat$AndroidTimePickerDialogImpl$2$1;-><init>(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/app/TimePickerDialogSdlCompat$AndroidTimePickerDialogImpl$2;)V

    .line 97
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
