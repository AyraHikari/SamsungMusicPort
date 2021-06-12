.class public Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MilkAlertParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams$OnClickListenerWrapper;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Ljava/lang/CharSequence;

.field b:Ljava/lang/CharSequence;

.field c:Ljava/lang/CharSequence;

.field d:Landroid/view/View;

.field e:Ljava/lang/String;

.field f:Ljava/lang/CharSequence;

.field g:Landroid/content/DialogInterface$OnClickListener;

.field h:Ljava/lang/String;

.field i:Ljava/lang/CharSequence;

.field j:Landroid/content/DialogInterface$OnClickListener;

.field k:Ljava/lang/String;

.field l:Ljava/lang/CharSequence;

.field m:Landroid/content/DialogInterface$OnClickListener;

.field n:Landroid/content/DialogInterface$OnDismissListener;

.field o:Ljava/lang/String;

.field p:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field q:Z

.field r:Z

.field private s:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 448
    new-instance v0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 363
    iput-boolean v0, p0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;->p:Z

    const/4 v0, 0x1

    .line 366
    iput-boolean v0, p0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;->q:Z

    .line 368
    iput-boolean v0, p0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;->r:Z

    .line 371
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;->s:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 363
    iput-boolean v0, p0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;->p:Z

    const/4 v1, 0x1

    .line 366
    iput-boolean v1, p0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;->q:Z

    .line 368
    iput-boolean v1, p0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;->r:Z

    .line 375
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;->r:Z

    .line 376
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;->q:Z

    .line 377
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;->e:Ljava/lang/String;

    return-void
.end method

.method private b()Landroid/view/View;
    .locals 3

    .line 431
    invoke-virtual {p0}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040117

    const/4 v2, 0x0

    .line 432
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 433
    iget-object v1, p0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;->b:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    const v1, 0x7f13020f

    .line 434
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 435
    iget-object v2, p0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;->b:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    .line 436
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    const v1, 0x7f130179

    .line 438
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 439
    iget-object v2, p0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;->c:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v0
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 389
    iget-object v0, p0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;->s:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;->s:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Landroid/support/v7/app/AlertDialog$Builder;)V
    .locals 5

    .line 396
    iget-object v0, p0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;->a:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;->a:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;->c:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 401
    invoke-direct {p0}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;->b()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    goto :goto_0

    .line 402
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;->b:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 403
    iget-object v0, p0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;->b:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 406
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;->d:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 407
    iget-object v0, p0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;->d:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 410
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;->f:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    .line 411
    iget-object v0, p0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;->f:Ljava/lang/CharSequence;

    new-instance v1, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams$OnClickListenerWrapper;

    iget-object v2, p0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;->h:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;->g:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams$OnClickListenerWrapper;-><init>(Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1, v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    goto :goto_1

    :cond_4
    const v0, 0x7f0b02d3

    const/4 v1, 0x0

    .line 415
    invoke-virtual {p1, v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 418
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;->i:Ljava/lang/CharSequence;

    if-eqz v0, :cond_5

    .line 419
    iget-object v0, p0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;->i:Ljava/lang/CharSequence;

    new-instance v1, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams$OnClickListenerWrapper;

    iget-object v2, p0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;->k:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;->j:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams$OnClickListenerWrapper;-><init>(Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1, v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 423
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;->l:Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    .line 424
    iget-object v0, p0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;->l:Ljava/lang/CharSequence;

    new-instance v1, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams$OnClickListenerWrapper;

    iget-object v2, p0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;->o:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;->m:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams$OnClickListenerWrapper;-><init>(Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1, v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    :cond_6
    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 382
    iget-boolean p2, p0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;->r:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 383
    iget-boolean p2, p0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;->q:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 384
    iget-object p2, p0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
