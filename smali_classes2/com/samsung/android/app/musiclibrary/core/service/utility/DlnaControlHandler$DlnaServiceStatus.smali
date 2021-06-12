.class Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler$DlnaServiceStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DlnaServiceStatus"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler$DlnaServiceStatus$Def;
    }
.end annotation


# static fields
.field static final CONNECTED:I = 0x2

.field static final IDLE:I = 0x0

.field static final RELEASE:I = 0x4

.field static final REQUEST_BIND:I = 0x1


# direct methods
.method constructor <init>()V
    .locals 0

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
