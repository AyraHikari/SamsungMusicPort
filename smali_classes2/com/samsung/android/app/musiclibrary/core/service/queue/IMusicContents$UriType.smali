.class public Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents$UriType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UriType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents$UriType$Def;
    }
.end annotation


# static fields
.field public static final DLNA_DMS:I = 0x3

.field public static final MEDIA_TRACK:I = 0x1

.field public static final NOT_IN_MEDIA_TRACK:I = 0x4

.field public static final RADIO:I = 0x2

.field public static final UNDEFINED:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
