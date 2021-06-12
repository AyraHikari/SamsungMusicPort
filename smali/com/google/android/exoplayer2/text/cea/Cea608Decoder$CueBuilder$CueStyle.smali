.class Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder$CueStyle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CueStyle"
.end annotation


# instance fields
.field public final a:Landroid/text/style/CharacterStyle;

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(Landroid/text/style/CharacterStyle;II)V
    .locals 0

    .line 794
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 795
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder$CueStyle;->a:Landroid/text/style/CharacterStyle;

    .line 796
    iput p2, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder$CueStyle;->b:I

    .line 797
    iput p3, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder$CueStyle;->c:I

    return-void
.end method
