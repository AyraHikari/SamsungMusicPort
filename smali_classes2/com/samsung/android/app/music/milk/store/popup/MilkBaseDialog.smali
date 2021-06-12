.class public abstract Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog$OnDialogStateListener;
    }
.end annotation


# static fields
.field private static a:I


# instance fields
.field private b:Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog$OnDialogStateListener;

.field private c:Landroid/content/BroadcastReceiver;

.field protected d:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 50
    new-instance v0, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog$1;-><init>(Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->c:Landroid/content/BroadcastReceiver;

    const/4 v0, -0x1

    .line 289
    iput v0, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->d:I

    return-void
.end method


# virtual methods
.method protected abstract a()I
.end method

.method protected a(Landroid/content/Context;)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method protected a(Landroid/app/Dialog;)V
    .locals 8

    .line 96
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 97
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 99
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAttribute : before width - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", height - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", y - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", gravity - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 101
    invoke-virtual {p1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 103
    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->b(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->d(Landroid/content/Context;)I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    .line 104
    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->e(Landroid/content/Context;)I

    move-result v3

    int-to-float v3, v3

    .line 106
    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 107
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v5, 0x0

    cmpl-float v6, v2, v5

    if-ltz v6, :cond_0

    int-to-float v4, v4

    sub-float/2addr v4, v2

    float-to-int v2, v4

    .line 110
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    :cond_0
    cmpl-float v2, v3, v5

    if-ltz v2, :cond_1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v3, v3, v2

    sub-float/2addr v1, v3

    float-to-int v1, v1

    .line 113
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_0

    .line 115
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->i(Landroid/content/Context;)I

    move-result v2

    .line 116
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x1

    const-wide v6, 0x3fe3333333333333L    # 0.6

    if-ne v3, v4, :cond_3

    if-nez v2, :cond_2

    .line 119
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_0

    :cond_2
    int-to-double v1, v1

    mul-double v1, v1, v6

    double-to-int v1, v1

    .line 121
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_0

    :cond_3
    if-nez v2, :cond_5

    const/16 v2, 0x44c

    if-gt v1, v2, :cond_4

    .line 126
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_0

    :cond_4
    int-to-double v1, v1

    mul-double v1, v1, v6

    double-to-int v1, v1

    .line 128
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_0

    :cond_5
    int-to-double v1, v1

    const-wide/high16 v3, 0x3fd8000000000000L    # 0.375

    mul-double v1, v1, v3

    double-to-int v1, v1

    .line 131
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 136
    :goto_0
    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->f(Landroid/content/Context;)I

    move-result v1

    if-ltz v1, :cond_7

    .line 137
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    if-gt v2, v1, :cond_6

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    if-gez v2, :cond_7

    .line 138
    :cond_6
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 141
    :cond_7
    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->a(Landroid/content/Context;)I

    move-result v1

    if-ltz v1, :cond_9

    .line 142
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-gt v2, v1, :cond_8

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-gez v2, :cond_9

    .line 143
    :cond_8
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 146
    :cond_9
    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->c(Landroid/content/Context;)I

    move-result v1

    if-ltz v1, :cond_a

    .line 148
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    const/16 v1, 0x31

    .line 149
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 152
    :cond_a
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->e()F

    move-result v1

    cmpl-float v1, v1, v5

    if-ltz v1, :cond_b

    .line 153
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->e()F

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 154
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 157
    :cond_b
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAttribute : after width - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", height - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", y - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", gravity - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method protected a(Landroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog$OnDialogStateListener;)V
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->b:Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog$OnDialogStateListener;

    return-void
.end method

.method protected b()I
    .locals 1

    const v0, 0x7f1102e8

    return v0
.end method

.method protected b(Landroid/content/Context;)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method protected c(Landroid/content/Context;)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method protected d(Landroid/content/Context;)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    const-string v0, "MilkBaseDialog"

    return-object v0
.end method

.method protected e()F
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method protected e(Landroid/content/Context;)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method protected f(Landroid/content/Context;)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .line 215
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 216
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->d()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onAttach "

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.samsung.android.app.music.milkstore.action.dismiss_dialog"

    .line 218
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 224
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 225
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 227
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->a(Landroid/app/Dialog;)V

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .line 73
    sget v0, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->a:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    sput v0, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->a:I

    .line 74
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->b()I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 75
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 76
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 77
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->a(Landroid/app/Dialog;)V

    const/4 v1, 0x0

    .line 78
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->setRetainInstance(Z)V

    .line 79
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onCreateDialog"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->a(Landroid/app/Dialog;Landroid/os/Bundle;)V

    .line 81
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->b:Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog$OnDialogStateListener;

    if-eqz p1, :cond_0

    .line 82
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->b:Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog$OnDialogStateListener;

    invoke-interface {p1}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog$OnDialogStateListener;->b()V

    :cond_0
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 209
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCreateView"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/DialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDetach()V
    .locals 2

    .line 233
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDetach()V

    .line 234
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDetach "

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 250
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDismiss "

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 252
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->b:Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog$OnDialogStateListener;

    if-eqz p1, :cond_0

    .line 253
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->b:Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog$OnDialogStateListener;

    invoke-interface {p1}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog$OnDialogStateListener;->a()V

    .line 256
    :cond_0
    sget p1, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->a:I

    add-int/lit8 p1, p1, -0x1

    sput p1, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->a:I

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 240
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onStart()V

    .line 241
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onStart "

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 202
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/DialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 203
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->d()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onViewCreated "

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
