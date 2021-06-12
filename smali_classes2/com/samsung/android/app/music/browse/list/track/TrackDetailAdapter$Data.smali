.class final Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$Data;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Data"
.end annotation


# instance fields
.field a:I

.field b:I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field

.field c:Ljava/lang/String;


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    iput p1, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$Data;->a:I

    return-void
.end method

.method constructor <init>(II)V
    .locals 0
    .param p2    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    iput p1, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$Data;->a:I

    .line 251
    iput p2, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$Data;->b:I

    return-void
.end method

.method constructor <init>(IILjava/lang/String;)V
    .locals 0
    .param p2    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    iput p1, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$Data;->a:I

    .line 256
    iput p2, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$Data;->b:I

    .line 257
    iput-object p3, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$Data;->c:Ljava/lang/String;

    return-void
.end method
