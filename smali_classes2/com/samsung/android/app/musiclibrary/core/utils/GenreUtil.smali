.class public final Lcom/samsung/android/app/musiclibrary/core/utils/GenreUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ID3_GENRES:[Ljava/lang/String;

.field private static final ID3_TO_SEC_GENRES:[Ljava/lang/String;

.field private static final sID3ToSecGenreMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 150

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/utils/GenreUtil;->sID3ToSecGenreMap:Ljava/util/HashMap;

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

    const-string v133, "Britpop"

    const-string v134, "Negerpunk"

    const-string v135, "Polsk Punk"

    const-string v136, "Beat"

    const-string v137, "Christian Gangsta"

    const-string v138, "Heavy Metal"

    const-string v139, "Black Metal"

    const-string v140, "Crossover"

    const-string v141, "Contemporary Christian"

    const-string v142, "Christian Rock"

    const-string v143, "Merengue"

    const-string v144, "Salsa"

    const-string v145, "Thrash Metal"

    const-string v146, "Anime"

    const-string v147, "JPop"

    const-string v148, "Synthpop"

    const-string v149, "and further - Unknown"

    .line 53
    filled-new-array/range {v1 .. v149}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/utils/GenreUtil;->ID3_GENRES:[Ljava/lang/String;

    const-string v1, "Blues"

    const-string v2, "Rock"

    const-string v3, "Country"

    const-string v4, "Dance"

    const-string v5, "Dance"

    const-string v6, "R&B/Soul"

    const-string v7, "Alternative/Indie"

    const-string v8, "Rap/Hip Hop"

    const-string v9, "Jazz"

    const-string v10, "Rock"

    const-string v11, "New Age"

    const-string v12, "Others"

    const-string v13, "Others"

    const-string v14, "Pop"

    const-string v15, "R&B/Soul"

    const-string v16, "Rap/Hip Hop"

    const-string v17, "Reggae"

    const-string v18, "Rock"

    const-string v19, "Dance"

    const-string v20, "Alternative/Indie"

    const-string v21, "Alternative/Indie"

    const-string v22, "Reggae"

    const-string v23, "Rock"

    const-string v24, "Comedy/Spoken"

    const-string v25, "Soundtrack"

    const-string v26, "Dance"

    const-string v27, "New Age"

    const-string v28, "Electronic"

    const-string v29, "Vocal"

    const-string v30, "Jazz"

    const-string v31, "Jazz"

    const-string v32, "Trance"

    const-string v33, "Classical"

    const-string v34, "Others"

    const-string v35, "Dance"

    const-string v36, "House"

    const-string v37, "Others"

    const-string v38, "Others"

    const-string v39, "Religious"

    const-string v40, "Others"

    const-string v41, "Alternative/Indie"

    const-string v42, "Electronic"

    const-string v43, "R&B/Soul"

    const-string v44, "Rock"

    const-string v45, "New Age"

    const-string v46, "New Age"

    const-string v47, "Easy Listening"

    const-string v48, "Rock"

    const-string v49, "World"

    const-string v50, "Rock"

    const-string v51, "Alternative/Indie"

    const-string v52, "Electronic"

    const-string v53, "Electronic"

    const-string v54, "Pop"

    const-string v55, "Dance"

    const-string v56, "Alternative/Indie"

    const-string v57, "Rock"

    const-string v58, "Comedy/Spoken"

    const-string v59, "Others"

    const-string v60, "Rap/Hip Hop"

    const-string v61, "Pop"

    const-string v62, "Religious"

    const-string v63, "Pop"

    const-string v64, "Dance"

    const-string v65, "World"

    const-string v66, "Vocal"

    const-string v67, "Alternative/Indie"

    const-string v68, "Rock"

    const-string v69, "Dance"

    const-string v70, "Others"

    const-string v71, "Others"

    const-string v72, "Alternative/Indie"

    const-string v73, "House"

    const-string v74, "Rock"

    const-string v75, "Dance"

    const-string v76, "Easy Listening"

    const-string v77, "R&B/Soul"

    const-string v78, "Vocal"

    const-string v79, "Rock"

    const-string v80, "Rock"

    const-string v81, "Folk"

    const-string v82, "Rock"

    const-string v83, "Folk"

    const-string v84, "Jazz"

    const-string v85, "Others"

    const-string v86, "Jazz"

    const-string v87, "Latin"

    const-string v88, "Others"

    const-string v89, "World"

    const-string v90, "Country"

    const-string v91, "Others"

    const-string v92, "Rock"

    const-string v93, "Rock"

    const-string v94, "Rock"

    const-string v95, "Rock"

    const-string v96, "Alternative/Indie"

    const-string v97, "Jazz"

    const-string v98, "Vocal"

    const-string v99, "Easy Listening"

    const-string v100, "Others"

    const-string v101, "Comedy/Spoken"

    const-string v102, "Comedy/Spoken"

    const-string v103, "World"

    const-string v104, "Classical"

    const-string v105, "Classical"

    const-string v106, "Classical"

    const-string v107, "Classical"

    const-string v108, "Others"

    const-string v109, "Others"

    const-string v110, "Others"

    const-string v111, "Comedy/Spoken"

    const-string v112, "Pop"

    const-string v113, "Dance"

    const-string v114, "Latin"

    const-string v115, "Latin"

    const-string v116, "World"

    const-string v117, "Jazz"

    const-string v118, "Pop"

    const-string v119, "R&B/Soul"

    const-string v120, "R&B/Soul"

    const-string v121, "Others"

    const-string v122, "Rock"

    const-string v123, "Others"

    const-string v124, "Vocal"

    const-string v125, "House"

    const-string v126, "Dance"

    const-string v127, "Trance"

    const-string v128, "Electronic"

    const-string v129, "Dance"

    const-string v130, "Rock"

    const-string v131, "Electronic"

    const-string v132, "Alternative/Indie"

    const-string v133, "Alternative/Indie"

    const-string v134, "Rock"

    const-string v135, "Rock"

    const-string v136, "Rock"

    const-string v137, "Religious"

    const-string v138, "Rock"

    const-string v139, "Rock"

    const-string v140, "Others"

    const-string v141, "Religious"

    const-string v142, "Religious"

    const-string v143, "Latin"

    const-string v144, "Latin"

    const-string v145, "Rock"

    const-string v146, "Soundtrack"

    const-string v147, "Pop"

    const-string v148, "Pop"

    const-string v149, "<unknown>"

    .line 82
    filled-new-array/range {v1 .. v149}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/utils/GenreUtil;->ID3_TO_SEC_GENRES:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSecGenre(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const-string v0, "<unknown>"

    goto :goto_0

    :cond_0
    move-object v0, p0

    .line 40
    :goto_0
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/utils/GenreUtil;->sID3ToSecGenreMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 41
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/utils/GenreUtil;->initID3toSecGenreHashMap()V

    :cond_1
    if-eqz p0, :cond_2

    .line 43
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/utils/GenreUtil;->sID3ToSecGenreMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 44
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/utils/GenreUtil;->sID3ToSecGenreMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    :cond_2
    if-eqz v0, :cond_3

    .line 46
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_3

    const-string v0, "<unknown>"

    :cond_3
    return-object v0
.end method

.method private static initID3toSecGenreHashMap()V
    .locals 4

    const/4 v0, 0x0

    .line 30
    :goto_0
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/utils/GenreUtil;->ID3_GENRES:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 31
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/utils/GenreUtil;->sID3ToSecGenreMap:Ljava/util/HashMap;

    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/utils/GenreUtil;->ID3_GENRES:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/app/musiclibrary/core/utils/GenreUtil;->ID3_TO_SEC_GENRES:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
