.class public Lcom/samsung/android/app/music/support/samsung/app/SemStatusBarManagerCompat;
.super Ljava/lang/Object;
.source "SemStatusBarManagerCompat.java"


# static fields
.field public static final DISABLE_BACK:I

.field public static final DISABLE_HOME:I

.field public static final DISABLE_RECENT:I

.field private static final NONE:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x400000

    .line 2
    sput v0, Lcom/samsung/android/app/music/support/samsung/app/SemStatusBarManagerCompat;->DISABLE_BACK:I

    const/high16 v0, 0x200000

    .line 3
    sput v0, Lcom/samsung/android/app/music/support/samsung/app/SemStatusBarManagerCompat;->DISABLE_HOME:I

    const/high16 v0, 0x1000000

    .line 4
    sput v0, Lcom/samsung/android/app/music/support/samsung/app/SemStatusBarManagerCompat;->DISABLE_RECENT:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    sput v0, Lcom/samsung/android/app/music/support/samsung/app/SemStatusBarManagerCompat;->DISABLE_BACK:I

    .line 6
    sput v0, Lcom/samsung/android/app/music/support/samsung/app/SemStatusBarManagerCompat;->DISABLE_HOME:I

    .line 7
    sput v0, Lcom/samsung/android/app/music/support/samsung/app/SemStatusBarManagerCompat;->DISABLE_RECENT:I

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
