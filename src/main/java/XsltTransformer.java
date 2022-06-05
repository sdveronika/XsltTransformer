import javax.xml.transform.*;
import javax.xml.transform.stream.*;
import java.io.*;

public class XsltTransformer {
    public static void main(String[] args) throws TransformerException {

        String XSLFILE="src/main/java/hotels2lists.xsl";
        String INFILE="src/main/java/Hotels.xml";
        String OUTFILE="src/main/java/lists.xml";

        StreamSource xslCode=new StreamSource(new File(XSLFILE));
        Source input =new StreamSource(new File(INFILE));
        Result output= new StreamResult(new File(OUTFILE));

        TransformerFactory tf=TransformerFactory.newDefaultInstance();
        Transformer trans=tf.newTransformer(xslCode);
        trans.transform((Source) input, (Result) output);



    }
}
