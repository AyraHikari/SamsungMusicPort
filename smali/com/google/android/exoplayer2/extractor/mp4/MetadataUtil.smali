.class final Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final A:I

.field private static final B:I

.field private static final C:I

.field private static final D:[Ljava/lang/String;

.field private static final a:I

.field private static final b:I

.field private static final c:I

.field private static final d:I

.field private static final e:I

.field private static final f:I

.field private static final g:I

.field private static final h:I

.field private static final i:I

.field private static final j:I

.field private static final k:I

.field private static final l:I

.field private static final m:I

.field private static final n:I

.field private static final o:I

.field private static final p:I

.field private static final q:I

.field private static final r:I

.field private static final s:I

.field private static final t:I

.field private static final u:I

.field private static final v:I

.field private static final w:I

.field private static final x:I

.field private static final y:I

.field private static final z:I


# direct methods
.method static constructor <clinit>()V
    .locals 149

    const-string v0, "nam"

    .line 35
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->a:I

    const-string v0, "trk"

    .line 36
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->b:I

    const-string v0, "cmt"

    .line 37
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->c:I

    const-string v0, "day"

    .line 38
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->d:I

    const-string v0, "ART"

    .line 39
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->e:I

    const-string v0, "too"

    .line 40
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->f:I

    const-string v0, "alb"

    .line 41
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->g:I

    const-string v0, "com"

    .line 42
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->h:I

    const-string v0, "wrt"

    .line 43
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->i:I

    const-string v0, "lyr"

    .line 44
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->j:I

    const-string v0, "gen"

    .line 45
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->k:I

    const-string v0, "covr"

    .line 48
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->l:I

    const-string v0, "gnre"

    .line 49
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->m:I

    const-string v0, "grp"

    .line 50
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->n:I

    const-string v0, "disk"

    .line 51
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->o:I

    const-string v0, "trkn"

    .line 52
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->p:I

    const-string v0, "tmpo"

    .line 53
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->q:I

    const-string v0, "cpil"

    .line 54
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->r:I

    const-string v0, "aART"

    .line 55
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->s:I

    const-string v0, "sonm"

    .line 56
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->t:I

    const-string v0, "soal"

    .line 57
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->u:I

    const-string v0, "soar"

    .line 58
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->v:I

    const-string v0, "soaa"

    .line 59
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->w:I

    const-string v0, "soco"

    .line 60
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->x:I

    const-string v0, "rtng"

    .line 63
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->y:I

    const-string v0, "pgap"

    .line 64
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->z:I

    const-string v0, "sosn"

    .line 65
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->A:I

    const-string v0, "tvsh"

    .line 66
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->B:I

    const-string v0, "----"

    .line 69
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->C:I

    const-string v1, "Blues"

    const-string v2, "Classic Rock"

    const-string v3, "Country"

    const-string v4, "Dance"

    const-string v5, "Disco"

    const-string v6, "Funk"

    const-string v7, "Grunge"

    const-string v8, "Hip-Hop"

    const-string v9, "Jazz"

    const-string v10, "Metal"

    const-string v11, "New Age"

    const-string v12, "Oldies"

    const-string v13, "Other"

    const-string v14, "Pop"

    const-string v15, "R&B"

    const-string v16, "Rap"

    const-string v17, "Reggae"

    const-string v18, "Rock"

    const-string v19, "Techno"

    const-string v20, "Industrial"

    const-string v21, "Alternative"

    const-string v22, "Ska"

    const-string v23, "Death Metal"

    const-string v24, "Pranks"

    const-string v25, "Soundtrack"

    const-string v26, "Euro-Techno"

    const-string v27, "Ambient"

    const-string v28, "Trip-Hop"

    const-string v29, "Vocal"

    const-string v30, "Jazz+Funk"

    const-string v31, "Fusion"

    const-string v32, "Trance"

    const-string v33, "Classical"

    const-string v34, "Instrumental"

    const-string v35, "Acid"

    const-string v36, "House"

    const-string v37, "Game"

    const-string v38, "Sound Clip"

    const-string v39, "Gospel"

    const-string v40, "Noise"

    const-string v41, "AlternRock"

    const-string v42, "Bass"

    const-string v43, "Soul"

    const-string v44, "Punk"

    const-string v45, "Space"

    const-string v46, "Meditative"

    const-string v47, "Instrumental Pop"

    const-string v48, "Instrumental Rock"

    const-string v49, "Ethnic"

    const-string v50, "Gothic"

    const-string v51, "Darkwave"

    const-string v52, "Techno-Industrial"

    const-string v53, "Electronic"

    const-string v54, "Pop-Folk"

    const-string v55, "Eurodance"

    const-string v56, "Dream"

    const-string v57, "Southern Rock"

    const-string v58, "Comedy"

    const-string v59, "Cult"

    const-string v60, "Gangsta"

    const-string v61, "Top 40"

    const-string v62, "Christian Rap"

    const-string v63, "Pop/Funk"

    const-string v64, "Jungle"

    const-string v65, "Native American"

    const-string v66, "Cabaret"

    const-string v67, "New Wave"

    const-string v68, "Psychadelic"

    const-string v69, "Rave"

    const-string v70, "Showtunes"

    const-string v71, "Trailer"

    const-string v72, "Lo-Fi"

    const-string v73, "Tribal"

    const-string v74, "Acid Punk"

    const-string v75, "Acid Jazz"

    const-string v76, "Polka"

    const-string v77, "Retro"

    const-string v78, "Musical"

    const-string v79, "Rock & Roll"

    const-string v80, "Hard Rock"

    const-string v81, "Folk"

    const-string v82, "Folk-Rock"

    const-string v83, "National Folk"

    const-string v84, "Swing"

    const-string v85, "Fast Fusion"

    const-string v86, "Bebob"

    const-string v87, "Latin"

    const-string v88, "Revival"

    const-string v89, "Celtic"

    const-string v90, "Bluegrass"

    const-string v91, "Avantgarde"

    const-string v92, "Gothic Rock"

    const-string v93, "Progressive Rock"

    const-string v94, "Psychedelic Rock"

    const-string v95, "Symphonic Rock"

    const-string v96, "Slow Rock"

    const-string v97, "Big Band"

    const-string v98, "Chorus"

    const-string v99, "Easy Listening"

    const-string v100, "Acoustic"

    const-string v101, "Humour"

    const-string v102, "Speech"

    const-string v103, "Chanson"

    const-string v104, "Opera"

    const-string v105, "Chamber Music"

    const-string v106, "Sonata"

    const-string v107, "Symphony"

    const-string v108, "Booty Bass"

    const-string v109, "Primus"

    const-string v110, "Porn Groove"

    const-string v111, "Satire"

    const-string v112, "Slow Jam"

    const-string v113, "Club"

    const-string v114, "Tango"

    const-string v115, "Samba"

    const-string v116, "Folklore"

    const-string v117, "Ballad"

    const-string v118, "Power Ballad"

    const-string v119, "Rhythmic Soul"

    const-string v120, "Freestyle"

    const-string v121, "Duet"

    const-string v122, "Punk Rock"

    const-string v123, "Drum Solo"

    const-string v124, "A capella"

    const-string v125, "Euro-House"

    const-string v126, "Dance Hall"

    const-string v127, "Goa"

    const-string v128, "Drum & Bass"

    const-string v129, "Club-House"

    const-string v130, "Hardcore"

    const-string v131, "Terror"

    const-string v132, "Indie"

    const-string v133, "BritPop"

    const-string v134, "Negerpunk"

    const-string v135, "Polsk Punk"

    const-string v136, "Beat"

    const-string v137, "Christian Gangsta Rap"

    const-string v138, "Heavy Metal"

    const-string v139, "Black Metal"

    const-string v140, "Crossover"

    const-string v141, "Contemporary Christian"

    const-string v142, "Christian Rock"

    const-string v143, "Merengue"

    const-string v144, "Salsa"

    const-string v145, "Thrash Metal"

    const-string v146, "Anime"

    const-string v147, "Jpop"

    const-string v148, "Synthpop"

    .line 72
    filled-new-array/range {v1 .. v148}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->D:[Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;
    .locals 5

    .line 113
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->d()I

    move-result v0

    .line 114
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->o()I

    move-result v1

    add-int/2addr v0, v1

    .line 115
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->o()I

    move-result v1

    shr-int/lit8 v2, v1, 0x18

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xa9

    if-eq v2, v3, :cond_11

    const v3, 0xfffd

    if-ne v2, v3, :cond_0

    goto/16 :goto_0

    .line 142
    :cond_0
    :try_start_0
    sget v2, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->m:I

    if-ne v1, v2, :cond_1

    .line 143
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->b(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c(I)V

    return-object v1

    .line 144
    :cond_1
    :try_start_1
    sget v2, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->o:I

    if-ne v1, v2, :cond_2

    const-string v2, "TPOS"

    .line 145
    invoke-static {v1, v2, p0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->b(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c(I)V

    return-object v1

    .line 146
    :cond_2
    :try_start_2
    sget v2, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->p:I

    if-ne v1, v2, :cond_3

    const-string v2, "TRCK"

    .line 147
    invoke-static {v1, v2, p0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->b(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 180
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c(I)V

    return-object v1

    .line 148
    :cond_3
    :try_start_3
    sget v2, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->q:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_4

    const-string v2, "TBPM"

    .line 149
    invoke-static {v1, v2, p0, v4, v3}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->a(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;ZZ)Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 180
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c(I)V

    return-object v1

    .line 150
    :cond_4
    :try_start_4
    sget v2, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->r:I

    if-ne v1, v2, :cond_5

    const-string v2, "TCMP"

    .line 151
    invoke-static {v1, v2, p0, v4, v4}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->a(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;ZZ)Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 180
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c(I)V

    return-object v1

    .line 152
    :cond_5
    :try_start_5
    sget v2, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->l:I

    if-ne v1, v2, :cond_6

    .line 153
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->c(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;

    move-result-object v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 180
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c(I)V

    return-object v1

    .line 154
    :cond_6
    :try_start_6
    sget v2, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->s:I

    if-ne v1, v2, :cond_7

    const-string v2, "TPE2"

    .line 155
    invoke-static {v1, v2, p0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->a(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 180
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c(I)V

    return-object v1

    .line 156
    :cond_7
    :try_start_7
    sget v2, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->t:I

    if-ne v1, v2, :cond_8

    const-string v2, "TSOT"

    .line 157
    invoke-static {v1, v2, p0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->a(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 180
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c(I)V

    return-object v1

    .line 158
    :cond_8
    :try_start_8
    sget v2, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->u:I

    if-ne v1, v2, :cond_9

    const-string v2, "TSO2"

    .line 159
    invoke-static {v1, v2, p0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->a(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 180
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c(I)V

    return-object v1

    .line 160
    :cond_9
    :try_start_9
    sget v2, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->v:I

    if-ne v1, v2, :cond_a

    const-string v2, "TSOA"

    .line 161
    invoke-static {v1, v2, p0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->a(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 180
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c(I)V

    return-object v1

    .line 162
    :cond_a
    :try_start_a
    sget v2, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->w:I

    if-ne v1, v2, :cond_b

    const-string v2, "TSOP"

    .line 163
    invoke-static {v1, v2, p0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->a(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 180
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c(I)V

    return-object v1

    .line 164
    :cond_b
    :try_start_b
    sget v2, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->x:I

    if-ne v1, v2, :cond_c

    const-string v2, "TSOC"

    .line 165
    invoke-static {v1, v2, p0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->a(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 180
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c(I)V

    return-object v1

    .line 166
    :cond_c
    :try_start_c
    sget v2, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->y:I

    if-ne v1, v2, :cond_d

    const-string v2, "ITUNESADVISORY"

    .line 167
    invoke-static {v1, v2, p0, v3, v3}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->a(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;ZZ)Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    move-result-object v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 180
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c(I)V

    return-object v1

    .line 168
    :cond_d
    :try_start_d
    sget v2, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->z:I

    if-ne v1, v2, :cond_e

    const-string v2, "ITUNESGAPLESS"

    .line 169
    invoke-static {v1, v2, p0, v3, v4}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->a(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;ZZ)Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    move-result-object v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 180
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c(I)V

    return-object v1

    .line 170
    :cond_e
    :try_start_e
    sget v2, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->A:I

    if-ne v1, v2, :cond_f

    const-string v2, "TVSHOWSORT"

    .line 171
    invoke-static {v1, v2, p0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->a(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 180
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c(I)V

    return-object v1

    .line 172
    :cond_f
    :try_start_f
    sget v2, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->B:I

    if-ne v1, v2, :cond_10

    const-string v2, "TVSHOW"

    .line 173
    invoke-static {v1, v2, p0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->a(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 180
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c(I)V

    return-object v1

    .line 174
    :cond_10
    :try_start_10
    sget v2, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->C:I

    if-ne v1, v2, :cond_1b

    .line 175
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->a(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    move-result-object v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 180
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c(I)V

    return-object v1

    :cond_11
    :goto_0
    const v2, 0xffffff

    and-int/2addr v2, v1

    .line 121
    :try_start_11
    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->c:I

    if-ne v2, v3, :cond_12

    .line 122
    invoke-static {v1, p0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->a(ILcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/CommentFrame;

    move-result-object v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 180
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c(I)V

    return-object v1

    .line 123
    :cond_12
    :try_start_12
    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->a:I

    if-eq v2, v3, :cond_1d

    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->b:I

    if-ne v2, v3, :cond_13

    goto/16 :goto_2

    .line 125
    :cond_13
    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->h:I

    if-eq v2, v3, :cond_1c

    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->i:I

    if-ne v2, v3, :cond_14

    goto/16 :goto_1

    .line 127
    :cond_14
    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->d:I

    if-ne v2, v3, :cond_15

    const-string v2, "TDRC"

    .line 128
    invoke-static {v1, v2, p0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->a(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 180
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c(I)V

    return-object v1

    .line 129
    :cond_15
    :try_start_13
    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->e:I

    if-ne v2, v3, :cond_16

    const-string v2, "TPE1"

    .line 130
    invoke-static {v1, v2, p0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->a(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 180
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c(I)V

    return-object v1

    .line 131
    :cond_16
    :try_start_14
    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->f:I

    if-ne v2, v3, :cond_17

    const-string v2, "TSSE"

    .line 132
    invoke-static {v1, v2, p0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->a(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 180
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c(I)V

    return-object v1

    .line 133
    :cond_17
    :try_start_15
    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->g:I

    if-ne v2, v3, :cond_18

    const-string v2, "TALB"

    .line 134
    invoke-static {v1, v2, p0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->a(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 180
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c(I)V

    return-object v1

    .line 135
    :cond_18
    :try_start_16
    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->j:I

    if-ne v2, v3, :cond_19

    const-string v2, "USLT"

    .line 136
    invoke-static {v1, v2, p0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->a(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 180
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c(I)V

    return-object v1

    .line 137
    :cond_19
    :try_start_17
    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->k:I

    if-ne v2, v3, :cond_1a

    const-string v2, "TCON"

    .line 138
    invoke-static {v1, v2, p0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->a(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 180
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c(I)V

    return-object v1

    .line 139
    :cond_1a
    :try_start_18
    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->n:I

    if-ne v2, v3, :cond_1b

    const-string v2, "TIT1"

    .line 140
    invoke-static {v1, v2, p0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->a(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    .line 180
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c(I)V

    return-object v1

    :cond_1b
    :try_start_19
    const-string v2, "MetadataUtil"

    .line 177
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipped unknown metadata entry: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    const/4 v1, 0x0

    .line 180
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c(I)V

    return-object v1

    :cond_1c
    :goto_1
    :try_start_1a
    const-string v2, "TCOM"

    .line 126
    invoke-static {v1, v2, p0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->a(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    .line 180
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c(I)V

    return-object v1

    :cond_1d
    :goto_2
    :try_start_1b
    const-string v2, "TIT2"

    .line 124
    invoke-static {v1, v2, p0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->a(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    .line 180
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c(I)V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c(I)V

    throw v1
.end method

.method private static a(ILcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/CommentFrame;
    .locals 3

    .line 198
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->o()I

    move-result v0

    .line 199
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->o()I

    move-result v1

    .line 200
    sget v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->aF:I

    if-ne v1, v2, :cond_0

    const/16 p0, 0x8

    .line 201
    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->d(I)V

    add-int/lit8 v0, v0, -0x10

    .line 202
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->f(I)Ljava/lang/String;

    move-result-object p0

    .line 203
    new-instance p1, Lcom/google/android/exoplayer2/metadata/id3/CommentFrame;

    const-string v0, "und"

    invoke-direct {p1, v0, p0, p0}, Lcom/google/android/exoplayer2/metadata/id3/CommentFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_0
    const-string p1, "MetadataUtil"

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to parse comment attribute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->c(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;ZZ)Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    .locals 0

    .line 211
    invoke-static {p2}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->d(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I

    move-result p2

    if-eqz p4, :cond_0

    const/4 p4, 0x1

    .line 213
    invoke-static {p4, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    :cond_0
    const/4 p4, 0x0

    if-ltz p2, :cond_2

    if-eqz p3, :cond_1

    .line 216
    new-instance p0, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p4, p2}, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/google/android/exoplayer2/metadata/id3/CommentFrame;

    const-string p3, "und"

    .line 217
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p3, p1, p2}, Lcom/google/android/exoplayer2/metadata/id3/CommentFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object p0

    :cond_2
    const-string p1, "MetadataUtil"

    .line 219
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to parse uint8 attribute: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->c(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p4
.end method

.method private static a(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    .locals 10

    const/4 v0, -0x1

    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    const/4 v4, -0x1

    const/4 v5, -0x1

    .line 279
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->d()I

    move-result v6

    if-ge v6, p1, :cond_3

    .line 280
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->d()I

    move-result v6

    .line 281
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->o()I

    move-result v7

    .line 282
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->o()I

    move-result v8

    const/4 v9, 0x4

    .line 283
    invoke-virtual {p0, v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->d(I)V

    .line 284
    sget v9, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->aD:I

    if-ne v8, v9, :cond_0

    add-int/lit8 v7, v7, -0xc

    .line 285
    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->f(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 286
    :cond_0
    sget v9, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->aE:I

    if-ne v8, v9, :cond_1

    add-int/lit8 v7, v7, -0xc

    .line 287
    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->f(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 289
    :cond_1
    sget v9, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->aF:I

    if-ne v8, v9, :cond_2

    move v4, v6

    move v5, v7

    :cond_2
    add-int/lit8 v7, v7, -0xc

    .line 293
    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->d(I)V

    goto :goto_0

    :cond_3
    const-string p1, "com.apple.iTunes"

    .line 296
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "iTunSMPB"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    if-ne v4, v0, :cond_4

    goto :goto_1

    .line 300
    :cond_4
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c(I)V

    const/16 p1, 0x10

    .line 301
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->d(I)V

    sub-int/2addr v5, p1

    .line 302
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->f(I)Ljava/lang/String;

    move-result-object p0

    .line 303
    new-instance p1, Lcom/google/android/exoplayer2/metadata/id3/CommentFrame;

    const-string v0, "und"

    invoke-direct {p1, v0, v3, p0}, Lcom/google/android/exoplayer2/metadata/id3/CommentFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_5
    :goto_1
    return-object v1
.end method

.method private static a(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;
    .locals 4

    .line 186
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->o()I

    move-result v0

    .line 187
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->o()I

    move-result v1

    .line 188
    sget v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->aF:I

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    const/16 p0, 0x8

    .line 189
    invoke-virtual {p2, p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->d(I)V

    add-int/lit8 v0, v0, -0x10

    .line 190
    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->f(I)Ljava/lang/String;

    move-result-object p0

    .line 191
    new-instance p2, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    invoke-direct {p2, p1, v3, p0}, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    :cond_0
    const-string p1, "MetadataUtil"

    .line 193
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to parse text attribute: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->c(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method

.method private static b(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;
    .locals 4

    .line 225
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->o()I

    move-result v0

    .line 226
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->o()I

    move-result v1

    .line 227
    sget v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->aF:I

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    const/16 v1, 0x16

    if-lt v0, v1, :cond_1

    const/16 v0, 0xa

    .line 228
    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->d(I)V

    .line 229
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->h()I

    move-result v0

    if-lez v0, :cond_1

    .line 231
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 232
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->h()I

    move-result p2

    if-lez p2, :cond_0

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 236
    :cond_0
    new-instance p2, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    invoke-direct {p2, p1, v3, p0}, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    :cond_1
    const-string p1, "MetadataUtil"

    .line 239
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to parse index/count attribute: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->c(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method

.method private static b(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;
    .locals 3

    .line 244
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->d(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I

    move-result p0

    const/4 v0, 0x0

    if-lez p0, :cond_0

    .line 245
    sget-object v1, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->D:[Ljava/lang/String;

    array-length v1, v1

    if-gt p0, v1, :cond_0

    sget-object v1, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->D:[Ljava/lang/String;

    add-int/lit8 p0, p0, -0x1

    aget-object p0, v1, p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_1

    .line 248
    new-instance v1, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    const-string v2, "TCON"

    invoke-direct {v1, v2, v0, p0}, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_1
    const-string p0, "MetadataUtil"

    const-string v1, "Failed to parse standard genre code"

    .line 250
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private static c(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;
    .locals 5

    .line 255
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->o()I

    move-result v0

    .line 256
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->o()I

    move-result v1

    .line 257
    sget v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->aF:I

    const/4 v3, 0x0

    if-ne v1, v2, :cond_3

    .line 258
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->o()I

    move-result v1

    .line 259
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->b(I)I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    const-string v2, "image/jpeg"

    goto :goto_0

    :cond_0
    const/16 v2, 0xe

    if-ne v1, v2, :cond_1

    const-string v2, "image/png"

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    if-nez v2, :cond_2

    const-string p0, "MetadataUtil"

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized cover art flags: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_2
    const/4 v1, 0x4

    .line 265
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->d(I)V

    add-int/lit8 v0, v0, -0x10

    .line 266
    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 267
    array-length v4, v0

    invoke-virtual {p0, v0, v1, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->a([BII)V

    .line 268
    new-instance p0, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;

    const/4 v1, 0x3

    invoke-direct {p0, v2, v3, v1, v0}, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;-><init>(Ljava/lang/String;Ljava/lang/String;I[B)V

    return-object p0

    :cond_3
    const-string p0, "MetadataUtil"

    const-string v0, "Failed to parse cover art attribute"

    .line 270
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method

.method private static d(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I
    .locals 2

    const/4 v0, 0x4

    .line 307
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->d(I)V

    .line 308
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->o()I

    move-result v0

    .line 309
    sget v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->aF:I

    if-ne v0, v1, :cond_0

    const/16 v0, 0x8

    .line 310
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->d(I)V

    .line 311
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->g()I

    move-result p0

    return p0

    :cond_0
    const-string p0, "MetadataUtil"

    const-string v0, "Failed to parse uint8 attribute value"

    .line 313
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method
