.class public final Lcom/mapps/android/share/AdInfoKey$BROADCASTEVENT;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapps/android/share/AdInfoKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BROADCASTEVENT"
.end annotation


# static fields
.field public static final ADCLICK:Ljava/lang/String; = "com.mapps.android.action.ADCLICK"

.field public static final ADERROR:Ljava/lang/String; = "com.mapps.android.action.ADERROR"

.field public static final ADERROR_VALUE:Ljava/lang/String; = "aderror_type"

.field public static final ADFINISH:Ljava/lang/String; = "com.mapps.android.action.FINISH"

.field public static final ADFINISH_CLOSE:I = 0x0

.field public static final ADFINISH_DESTROY:I = 0x1

.field public static final ADFINISH_VALUE:Ljava/lang/String; = "adfinish_value"

.field public static final CHARGEABLE:Ljava/lang/String; = "com.mapps.android.action.CHARGEABLE"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
