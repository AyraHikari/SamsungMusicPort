.class final Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendAdapter$SubHeader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/base/ItemViewable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SubHeader"
.end annotation


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendAdapter$SubHeader;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final b()I
    .locals 1

    .line 110
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/listeningtrend/ListeningTrendAdapter$SubHeader;->a:I

    return v0
.end method
