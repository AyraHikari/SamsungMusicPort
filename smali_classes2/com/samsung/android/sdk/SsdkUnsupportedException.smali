.class public Lcom/samsung/android/sdk/SsdkUnsupportedException;
.super Ljava/lang/Exception;
.source "SourceFile"


# static fields
.field public static final DEVICE_NOT_SUPPORTED:I = 0x1

.field public static final LIBRARY_NOT_INSTALLED:I = 0x2

.field public static final LIBRARY_UPDATE_IS_RECOMMENDED:I = 0x4

.field public static final LIBRARY_UPDATE_IS_REQUIRED:I = 0x3

.field public static final VENDOR_NOT_SUPPORTED:I


# instance fields
.field private mErrorType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 39
    iput p1, p0, Lcom/samsung/android/sdk/SsdkUnsupportedException;->mErrorType:I

    .line 52
    iput p2, p0, Lcom/samsung/android/sdk/SsdkUnsupportedException;->mErrorType:I

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/samsung/android/sdk/SsdkUnsupportedException;->mErrorType:I

    return v0
.end method
