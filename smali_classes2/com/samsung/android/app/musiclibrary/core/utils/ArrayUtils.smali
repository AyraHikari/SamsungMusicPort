.class public final Lcom/samsung/android/app/musiclibrary/core/utils/ArrayUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getValueOfIndex([Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    if-eqz p0, :cond_0

    .line 9
    array-length v0, p0

    if-le v0, p1, :cond_0

    .line 10
    aget-object p0, p0, p1

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
