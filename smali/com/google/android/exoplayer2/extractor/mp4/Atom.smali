.class abstract Lcom/google/android/exoplayer2/extractor/mp4/Atom;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;,
        Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    }
.end annotation


# static fields
.field public static final A:I

.field public static final B:I

.field public static final C:I

.field public static final D:I

.field public static final E:I

.field public static final F:I

.field public static final G:I

.field public static final H:I

.field public static final I:I

.field public static final J:I

.field public static final K:I

.field public static final L:I

.field public static final M:I

.field public static final N:I

.field public static final O:I

.field public static final P:I

.field public static final Q:I

.field public static final R:I

.field public static final S:I

.field public static final T:I

.field public static final U:I

.field public static final V:I

.field public static final W:I

.field public static final X:I

.field public static final Y:I

.field public static final Z:I

.field public static final a:I

.field public static final aA:I

.field public static final aB:I

.field public static final aC:I

.field public static final aD:I

.field public static final aE:I

.field public static final aF:I

.field public static final aG:I

.field public static final aH:I

.field public static final aI:I

.field public static final aJ:I

.field public static final aK:I

.field public static final aL:I

.field public static final aM:I

.field public static final aN:I

.field public static final aO:I

.field public static final aa:I

.field public static final ab:I

.field public static final ac:I

.field public static final ad:I

.field public static final ae:I

.field public static final af:I

.field public static final ag:I

.field public static final ah:I

.field public static final ai:I

.field public static final aj:I

.field public static final ak:I

.field public static final al:I

.field public static final am:I

.field public static final an:I

.field public static final ao:I

.field public static final ap:I

.field public static final aq:I

.field public static final ar:I

.field public static final as:I

.field public static final at:I

.field public static final au:I

.field public static final av:I

.field public static final aw:I

.field public static final ax:I

.field public static final ay:I

.field public static final az:I

.field public static final b:I

.field public static final c:I

.field public static final d:I

.field public static final e:I

.field public static final f:I

.field public static final g:I

.field public static final h:I

.field public static final i:I

.field public static final j:I

.field public static final k:I

.field public static final l:I

.field public static final m:I

.field public static final n:I

.field public static final o:I

.field public static final p:I

.field public static final q:I

.field public static final r:I

.field public static final s:I

.field public static final t:I

.field public static final u:I

.field public static final v:I

.field public static final w:I

.field public static final x:I

.field public static final y:I

.field public static final z:I


# instance fields
.field public final aP:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ftyp"

    .line 51
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->a:I

    const-string v0, "avc1"

    .line 52
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->b:I

    const-string v0, "avc3"

    .line 53
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->c:I

    const-string v0, "hvc1"

    .line 54
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->d:I

    const-string v0, "hev1"

    .line 55
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->e:I

    const-string v0, "s263"

    .line 56
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->f:I

    const-string v0, "d263"

    .line 57
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->g:I

    const-string v0, "mdat"

    .line 58
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->h:I

    const-string v0, "mp4a"

    .line 59
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->i:I

    const-string v0, ".mp3"

    .line 60
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->j:I

    const-string v0, "wave"

    .line 61
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->k:I

    const-string v0, "lpcm"

    .line 62
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->l:I

    const-string v0, "sowt"

    .line 63
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->m:I

    const-string v0, "ac-3"

    .line 64
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->n:I

    const-string v0, "dac3"

    .line 65
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->o:I

    const-string v0, "ec-3"

    .line 66
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->p:I

    const-string v0, "dec3"

    .line 67
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->q:I

    const-string v0, "dtsc"

    .line 68
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->r:I

    const-string v0, "dtsh"

    .line 69
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->s:I

    const-string v0, "dtsl"

    .line 70
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->t:I

    const-string v0, "dtse"

    .line 71
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->u:I

    const-string v0, "ddts"

    .line 72
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->v:I

    const-string v0, "tfdt"

    .line 73
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->w:I

    const-string v0, "tfhd"

    .line 74
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->x:I

    const-string v0, "trex"

    .line 75
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->y:I

    const-string v0, "trun"

    .line 76
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->z:I

    const-string v0, "sidx"

    .line 77
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->A:I

    const-string v0, "moov"

    .line 78
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->B:I

    const-string v0, "mvhd"

    .line 79
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->C:I

    const-string v0, "trak"

    .line 80
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->D:I

    const-string v0, "mdia"

    .line 81
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->E:I

    const-string v0, "minf"

    .line 82
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->F:I

    const-string v0, "stbl"

    .line 83
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->G:I

    const-string v0, "avcC"

    .line 84
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->H:I

    const-string v0, "hvcC"

    .line 85
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->I:I

    const-string v0, "esds"

    .line 86
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->J:I

    const-string v0, "moof"

    .line 87
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->K:I

    const-string v0, "traf"

    .line 88
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->L:I

    const-string v0, "mvex"

    .line 89
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->M:I

    const-string v0, "mehd"

    .line 90
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->N:I

    const-string v0, "tkhd"

    .line 91
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->O:I

    const-string v0, "edts"

    .line 92
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->P:I

    const-string v0, "elst"

    .line 93
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->Q:I

    const-string v0, "mdhd"

    .line 94
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->R:I

    const-string v0, "hdlr"

    .line 95
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->S:I

    const-string v0, "stsd"

    .line 96
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->T:I

    const-string v0, "pssh"

    .line 97
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->U:I

    const-string v0, "sinf"

    .line 98
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->V:I

    const-string v0, "schm"

    .line 99
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->W:I

    const-string v0, "schi"

    .line 100
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->X:I

    const-string v0, "tenc"

    .line 101
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->Y:I

    const-string v0, "encv"

    .line 102
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->Z:I

    const-string v0, "enca"

    .line 103
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->aa:I

    const-string v0, "frma"

    .line 104
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->ab:I

    const-string v0, "saiz"

    .line 105
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->ac:I

    const-string v0, "saio"

    .line 106
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->ad:I

    const-string v0, "sbgp"

    .line 107
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->ae:I

    const-string v0, "sgpd"

    .line 108
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->af:I

    const-string v0, "uuid"

    .line 109
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->ag:I

    const-string v0, "senc"

    .line 110
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->ah:I

    const-string v0, "pasp"

    .line 111
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->ai:I

    const-string v0, "TTML"

    .line 112
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->aj:I

    const-string v0, "vmhd"

    .line 113
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->ak:I

    const-string v0, "mp4v"

    .line 114
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->al:I

    const-string v0, "stts"

    .line 115
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->am:I

    const-string v0, "stss"

    .line 116
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->an:I

    const-string v0, "ctts"

    .line 117
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->ao:I

    const-string v0, "stsc"

    .line 118
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->ap:I

    const-string v0, "stsz"

    .line 119
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->aq:I

    const-string v0, "stz2"

    .line 120
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->ar:I

    const-string v0, "stco"

    .line 121
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->as:I

    const-string v0, "co64"

    .line 122
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->at:I

    const-string v0, "tx3g"

    .line 123
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->au:I

    const-string v0, "wvtt"

    .line 124
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->av:I

    const-string v0, "stpp"

    .line 125
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->aw:I

    const-string v0, "c608"

    .line 126
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->ax:I

    const-string v0, "samr"

    .line 127
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->ay:I

    const-string v0, "sawb"

    .line 128
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->az:I

    const-string v0, "udta"

    .line 129
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->aA:I

    const-string v0, "meta"

    .line 130
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->aB:I

    const-string v0, "ilst"

    .line 131
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->aC:I

    const-string v0, "mean"

    .line 132
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->aD:I

    const-string v0, "name"

    .line 133
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->aE:I

    const-string v0, "data"

    .line 134
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->aF:I

    const-string v0, "emsg"

    .line 135
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->aG:I

    const-string v0, "st3d"

    .line 136
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->aH:I

    const-string v0, "sv3d"

    .line 137
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->aI:I

    const-string v0, "proj"

    .line 138
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->aJ:I

    const-string v0, "vp08"

    .line 139
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->aK:I

    const-string v0, "vp09"

    .line 140
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->aL:I

    const-string v0, "vpcC"

    .line 141
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->aM:I

    const-string v0, "camm"

    .line 142
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->aN:I

    const-string v0, "alac"

    .line 143
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->aO:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->aP:I

    return-void
.end method

.method public static a(I)I
    .locals 0

    shr-int/lit8 p0, p0, 0x18

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static b(I)I
    .locals 1

    const v0, 0xffffff

    and-int/2addr p0, v0

    return p0
.end method

.method public static c(I)Ljava/lang/String;
    .locals 2

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit16 p0, p0, 0xff

    int-to-char p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 153
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->aP:I

    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->c(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
